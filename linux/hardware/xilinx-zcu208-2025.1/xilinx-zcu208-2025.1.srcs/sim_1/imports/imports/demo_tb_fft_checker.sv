// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2025 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.

//-----------------------------------------------------------------------------
`timescale 1ns / 1ps

import demo_tb_rfdac_utils_pkg::*;

//------------------------------------------------------------------------------
// Constants
//------------------------------------------------------------------------------
parameter FFT_LEN =  1024;
parameter PI      = 3.14159265358979323846264338327950288;

//------------------------------------------------------------------------------
// Data structures
//------------------------------------------------------------------------------
typedef struct {
   real Re;
   real Im; 
   real Mag; 
} complex_t;

typedef struct {
   complex_t arr[FFT_LEN];
} cplxArray_t;
   
typedef struct {
   real i_tones[FFT_LEN];     // Array for found I tones (freq Hz)
   real q_tones[FFT_LEN];     // Array for found Q tones (freq Hz)
   real mag_tones[FFT_LEN];   // Array for found mag tones (freq Hz)
   int  i_toneCount;          // Number of I tones
   int  q_toneCount;          // Number of Q tones
   int  mag_toneCount;        // Number of mag tones   
} toneArray_t;

//------------------------------------------------------------------------------
// This function is translated from a C FFT routine. Use of pointers in C has
// be modified to index variables that can be supported in SV
// The C is visible inline as are multiple display statements used in the 
// translation debug.
// Note this file should be supplied with a C translated version of the 
// original routine for comparrison.
//------------------------------------------------------------------------------
function automatic void fft ( 
   ref   cplxArray_t v, 
   input integer     vIdx, 
   input int         n, 
   ref   cplxArray_t tmp, 
   input integer     tmpIdx
 );
   int i;
   if(n > 1) begin
      int k,m;
      complex_t z, w;
      int veTmpIndex;
      int voTmpIndex;
         
//------------------------------------------------------------------------------
//    ve = tmp;     // Point to start of tmp
//    vo = tmp+n/2; // Point to the middle of the buffer
//------------------------------------------------------------------------------
      veTmpIndex = tmpIdx;     // Point to start of tmp
      voTmpIndex = tmpIdx+n/2; // Point to the middle of the buffer
      
//------------------------------------------------------------------------------
//      for(k=0; k<n/2; k++) {
//         ve[k] = v[2*k];
//         vo[k] = v[2*k+1];
//      }
//------------------------------------------------------------------------------
      for(k=0; k<n/2; k++) begin
         tmp.arr[veTmpIndex + k] = v.arr[vIdx + (2*k)];
         tmp.arr[voTmpIndex + k] = v.arr[vIdx + ((2*k)+1)];
      end

//------------------------------------------------------------------------------
//    fft( ve, n/2, v );    /* FFT on even-indexed elements of v[] */
//    fft( vo, n/2, v );    /* FFT on odd-indexed elements of v[] */
//------------------------------------------------------------------------------
      fft(tmp, veTmpIndex, n/2, v, vIdx);
      fft(tmp, voTmpIndex, n/2, v, vIdx);
      
//------------------------------------------------------------------------------
//    for(m=0; m<n/2; m++) {
      //      w.Re = cos(2*PI*m/(double)n);
      //      w.Im = -sin(2*PI*m/(double)n);
      //      z.Re = w.Re*vo[m].Re - w.Im*vo[m].Im;    /* Re(w*vo[m]) */
      //      z.Im = w.Re*vo[m].Im + w.Im*vo[m].Re;    /* Im(w*vo[m]) */
      //      v[  m  ].Re = ve[m].Re + z.Re;
      //      v[  m  ].Im = ve[m].Im + z.Im;
      //      v[m+n/2].Re = ve[m].Re - z.Re;
      //      v[m+n/2].Im = ve[m].Im - z.Im;
      //    }
//------------------------------------------------------------------------------
      for(m=0; m<n/2; m++) begin
         w.Re = $cos(2.0*PI*(m*1.0)/(n*1.0));
         w.Im = -$sin(2.0*PI*(m*1.0)/(n*1.0));
         z.Re = w.Re*tmp.arr[voTmpIndex + m].Re - w.Im*tmp.arr[voTmpIndex + m].Im;    /* Re(w*vo[m]) */
         z.Im = w.Re*tmp.arr[voTmpIndex + m].Im + w.Im*tmp.arr[voTmpIndex + m].Re;    /* Im(w*vo[m]) */
         v.arr[vIdx +   m    ].Re = tmp.arr[veTmpIndex + m].Re + z.Re;
         v.arr[vIdx +   m    ].Im = tmp.arr[veTmpIndex + m].Im + z.Im;
         v.arr[vIdx + (m+n/2)].Re = tmp.arr[veTmpIndex + m].Re - z.Re;
         v.arr[vIdx + (m+n/2)].Im = tmp.arr[veTmpIndex + m].Im - z.Im;

      end
     
   end

endfunction

//------------------------------------------------------------------------------
// Display the FFT content
//------------------------------------------------------------------------------
function automatic void displayFftContent ( 
   ref   cplxArray_t v        , // Complex array with all the data
   input integer     fftLength  // Length of the complex FFT buffer
 );
   int i;

   for(i=0; i<fftLength; i++) begin
      $display("INSTANCE %m :re=%f im=%f", v.arr[i].Re, v.arr[i].Im);
   end
  
endfunction

//------------------------------------------------------------------------------
// Write the FFT content
// Syntax is csv for easy review in excel, or more complex processing in 
// matlab/python
//------------------------------------------------------------------------------
function automatic void writeFftContent ( 
   ref   cplxArray_t v        , // Complex array with FFT data
   ref   cplxArray_t data     , // Complex array with time series data
   input integer     fftLength  // Length of the complex FFT buffer
 );
   int i, fileRef;
   fileRef = $fopen("fft.csv");
   for(i=0; i<fftLength; i++) begin
      $fdisplay(fileRef, "Bin, %d, ts, %f, re, %f,im,%f,", i, data.arr[i].Re, (v.arr[i].Re/fftLength), (v.arr[i].Im/fftLength));
   end
   $fclose (fileRef);
endfunction

//------------------------------------------------------------------------------
// return an absolute value
//------------------------------------------------------------------------------
function real returnAbsValue ( 
   input real value 
 );
   return ($sqrt(value * value));
endfunction

//------------------------------------------------------------------------------
// Search for tones and return an array
//------------------------------------------------------------------------------
function real calcToneMag ( 
   input real     re    ,    // real component
   input real     im         // imaginary component
   );

   return  ($sqrt((re * re) + (im * im)));  // magintude
endfunction

//------------------------------------------------------------------------------
// Search for tones and return an array
//------------------------------------------------------------------------------
function automatic void toneSearchBasic ( 
   ref   cplxArray_t v          ,             // Complex array with all the data
   input integer     fftLength  ,             // Length of the complex FFT buffer
   input real        threshold  ,             // tone decision level
   input real        fs         ,             // Sampling Frequency
   ref   toneArray_t toneResults,             // Tone array to fill
   input bit         enable_display_messages, // enable $display printing
   output real       max_tone_level           // report the maximum tone level detected
 );
   int i;
   real binContentInHz;

   toneResults.i_toneCount   = 0;
   toneResults.q_toneCount   = 0;
   toneResults.mag_toneCount = 0;
   max_tone_level            = 0;

   // populate the array magnitude for each bin before searching
   for(i=0; i<fftLength; i++) begin   
      v.arr[i].Mag = calcToneMag (v.arr[i].Re, v.arr[i].Im);
   end

   for(i=0; i<fftLength; i++) begin
      binContentInHz = 1.0 * i * fs / fftLength;

      // check real 
      if (returnAbsValue(v.arr[i].Re) >= threshold) begin
         toneResults.i_tones[toneResults.i_toneCount] = binContentInHz;
         if (enable_display_messages)
           $display("INSTANCE %m :Found REAL tone @ %.3fHz in BIN %-5d, level = %f", toneResults.i_tones[toneResults.i_toneCount], i, v.arr[i].Re);
         toneResults.i_toneCount++;
      end
    
      // check imaginary
      if (returnAbsValue(v.arr[i].Im) >= threshold) begin
         toneResults.q_tones[toneResults.q_toneCount] = binContentInHz;
         if (enable_display_messages)
            $display("INSTANCE %m :Found IMAG tone @ %.3fHz in BIN %-5d, level = %f", toneResults.q_tones[toneResults.q_toneCount], i, v.arr[i].Im);
         toneResults.q_toneCount++;
      end

      // check tone magnitude, and return max_tone_level, i.e maximum magnitude of the tone, not just the real or imag components
      if (returnAbsValue(v.arr[i].Mag) >= threshold) begin
         toneResults.mag_tones[toneResults.mag_toneCount] = binContentInHz;
         if (enable_display_messages)
            $display("INSTANCE %m :Found MAG tone @ %.3fHz in BIN %-5d, level = %f", toneResults.mag_tones[toneResults.mag_toneCount], i, v.arr[i].Mag);
         toneResults.mag_toneCount++;
         if (returnAbsValue(v.arr[i].Mag) > max_tone_level)
          max_tone_level = returnAbsValue(v.arr[i].Mag);
      end

   end

endfunction

//------------------------------------------------------------------------------
// Compare Pred vrs Actual tones ( actual = after threshold )
//------------------------------------------------------------------------------
function automatic int tonePredPassFail ( 
   ref   toneArray_t tonePredict,            // Predixcted Tone array
   input integer     fftLength  ,            // Length of the complex FFT buffer
   input real        fs         ,            // Sampling Frequency
   ref   toneArray_t toneResults,            // Tone array to fill
   input bit         enable_display_messages // enable $display printing
 );
   int   i;
   int   t;
   real  binContentInHz;
   logic i_tone_match;
   logic q_tone_match;
   logic mag_tone_match;
   int   matching_index_arr [];
   bit   unique_tone_match; 
   real  v_mag_tone; 
   int   kk;
   logic error;
   error          = 0; // initialise error signal
   binContentInHz = 1.0 * fs / fftLength;

   if (enable_display_messages) begin
     $display("INSTANCE %m :tonePredPassFail START");
     
     $display("INSTANCE %m :tonePredict.i_toneCount   =", tonePredict.i_toneCount);
     $display("INSTANCE %m :tonePredict.q_toneCount   =", tonePredict.q_toneCount);
     $display("INSTANCE %m :tonePredict.mag_toneCount =", tonePredict.mag_toneCount);
     
     $display("INSTANCE %m :toneResults.i_toneCount   =", toneResults.i_toneCount);
     $display("INSTANCE %m :toneResults.q_toneCount   =", toneResults.q_toneCount);
     $display("INSTANCE %m :toneResults.mag_toneCount =", toneResults.mag_toneCount);
   end

      // check that an entry is in the bin for each tone.
    
      // First check I entries (Real)
      matching_index_arr = new[0]; 
      for (i = 0; i < tonePredict.i_toneCount; i++) begin
        i_tone_match = 0;
        for (t = 0; t < toneResults.i_toneCount; t++) begin // compare each entry of toneResults with the predicted tone and check for a match of any entry
          
          // we need to take into account the fft rounding, and that the toneResult is the min freq stored in the bin
          if ((tonePredict.i_tones[i] >= (toneResults.i_tones[t] - (binContentInHz/2))) && (tonePredict.i_tones[i] <= (toneResults.i_tones[t] + binContentInHz))) begin
            i_tone_match = 1;
            unique_tone_match = 1;	    
            foreach(matching_index_arr[jj]) begin	       
              if (matching_index_arr[jj] == t) begin
             unique_tone_match = 0;
              end	       	       
            end
	        if (unique_tone_match || (i==0)) begin
              matching_index_arr = new[matching_index_arr.size()+1] ({matching_index_arr,t});
              if (enable_display_messages) begin
	            $display("INSTANCE %m :Unique Match %-5d ", t);
	          end
	        end
	        if (enable_display_messages) begin
              $display("INSTANCE %m :Matching Real Pred and Actual FFT Tone in Results entry %-5d ", t);  //toneResults.*_count is the Results entry number
            end
          end
        end
        if (i_tone_match != 1) begin
          if (enable_display_messages) begin
            $display("INSTANCE %m :Predicted Real Tone error");
          end
        end
      end

      // Next check Q entries (Imag)
      matching_index_arr = new[0]; 
      for (i = 0; i < tonePredict.q_toneCount; i++) begin
        q_tone_match = 0;
        for (t = 0; t < toneResults.q_toneCount; t++) begin // compare each entry of toneResults with the predicted tone and check for a match of any entry
          
          // we need to take into account the fft rounding, and that the toneResult is the min freq stored in the bin
          if ((tonePredict.q_tones[i] >= (toneResults.q_tones[t] - (binContentInHz/2))) && (tonePredict.q_tones[i] <= (toneResults.q_tones[t] + binContentInHz))) begin
            q_tone_match = 1;
            unique_tone_match = 1; 
            foreach(matching_index_arr[jj]) begin	       
              if (matching_index_arr[jj] == t) begin
             unique_tone_match = 0;
              end	       	       
            end
	        if (unique_tone_match || (i==0)) begin
              matching_index_arr = new[matching_index_arr.size()+1] ({matching_index_arr,t});
              if (enable_display_messages) begin
	            $display("INSTANCE %m :Unique Match %-5d ", t);
	          end
	        end
	        if (enable_display_messages) begin
              $display("INSTANCE %m :Matching Imag Pred and Actual FFT Tone in Results entry %-5d ", t);  //toneResults.*_count is the Results entry number
            end
          end
        end
        if (q_tone_match != 1) begin
          if (enable_display_messages) begin
            $display("INSTANCE %m :Predicted Imag Tone error");
          end
        end
      end

      // Next check Mag entries (Mag), which is the actual number of tones detected
      // 
      matching_index_arr = new[0];
      //
        
      for (i = 0; i < tonePredict.mag_toneCount; i++) begin
        mag_tone_match = 0;
        for (t = 0; t < toneResults.mag_toneCount; t++) begin // compare each entry of toneResults with the predicted tone and check for a match of any entry
          
          // we need to take into account the fft rounding, and that the toneResult is the min freq stored in the bin
          if ((tonePredict.mag_tones[i] >= (toneResults.mag_tones[t] - (binContentInHz/2))) && (tonePredict.mag_tones[i] <= (toneResults.mag_tones[t] + binContentInHz))) begin
            mag_tone_match = 1;
            unique_tone_match = 1; 
            foreach(matching_index_arr[jj]) begin	       
              if (matching_index_arr[jj] == t) begin
                unique_tone_match = 0;
              end	       	       
            end
	        if (unique_tone_match || (i==0)) begin
              matching_index_arr = new[matching_index_arr.size()+1] ({matching_index_arr,t});
              if (enable_display_messages) begin
	          $display("INSTANCE %m :Unique Match %-5d ", t);   
	        end	      
	        end
            if (enable_display_messages) begin
            $display("INSTANCE %m :Matching Mag Pred and Actual FFT Tone in Results entry %-5d ", t);  //toneResults.*_count is the Results entry number
          end
        end
        end
        if (mag_tone_match != 1) begin
          $display("INSTANCE %m :Predicted Mag Tone error"); 
          error = 1;
        end
      end

      // display all entries in tonePredict and toneResult
      if (enable_display_messages) begin

        // For each predicted tone, print the value in the Predict and Results arrays
        for (i = 0; i < tonePredict.i_toneCount; i++) begin
              $display("INSTANCE %m :tonePredict.i_tones %-5f ", tonePredict.i_tones[i]);
        end
        for (i = 0; i < tonePredict.q_toneCount; i++) begin
              $display("INSTANCE %m :tonePredict.q_tones %-5f ", tonePredict.q_tones[i]);
        end
        for (i = 0; i < tonePredict.mag_toneCount; i++) begin
              $display("INSTANCE %m :tonePredict.mag_tones %-5f ", tonePredict.mag_tones[i]);
        end
        for (i = 0; i < toneResults.i_toneCount; i++) begin
              $display("INSTANCE %m :toneResults.i_tones %-5f ", toneResults.i_tones[i]);
        end
        for (i = 0; i < toneResults.q_toneCount; i++) begin
              $display("INSTANCE %m :toneResults.q_tones %-5f ", toneResults.q_tones[i]);
        end
        for (i = 0; i < toneResults.mag_toneCount; i++) begin
              $display("INSTANCE %m :toneResults.mag_tones %-5f ", toneResults.mag_tones[i]);
        end
  
      end
      else begin
        if (toneResults.mag_toneCount < 1000) begin
          for (i = 0; i < tonePredict.mag_toneCount; i++) begin
                $display("INSTANCE %m :tonePredict.mag_tones %-1f Hz", tonePredict.mag_tones[i]);
          end
          for (i = 0; i < toneResults.mag_toneCount; i++) begin
                $display("INSTANCE %m :toneResults.mag_tones %-1f Hz", toneResults.mag_tones[i]);
          end
        end
        else begin
          $display("INSTANCE %m :No tone found. %d entries in FFT ", toneResults.mag_toneCount);
          error = 1;
        end
      end
        

      $display("INSTANCE %m :**************************************************************************************");
      if (error == 0)
        $display("INSTANCE %m :tonePredPassFail = PASS, error = %d, i_tone_match = %d, q_tone_match = %d, mag_tone_match %d", error, i_tone_match, q_tone_match, mag_tone_match);
      else
        $display("INSTANCE %m :tonePredPassFail = FAIL, error = %d, i_tone_match = %d, q_tone_match = %d  mag_tone_match %d", error, i_tone_match, q_tone_match, mag_tone_match);
      $display("INSTANCE %m :**************************************************************************************");

   if (enable_display_messages) begin
   $display("INSTANCE %m :tonePredPassFail END");
   end

   return error;

endfunction

//------------------------------------------------------------------------------
// Pass Fail decision
// Example code shows iterating over result arrays.
//------------------------------------------------------------------------------
function automatic makePassFailDecision ( 
   ref   toneArray_t toneResults,  // Tone array to fill
   input bit display_tones_en      // display the tones detected
 );
   int passFail = 1;
   int counter  = 0;
   
   // Real results
   for (counter = 0; counter<toneResults.i_toneCount; counter++) begin
     if (display_tones_en == 1)
      $display("INSTANCE %m :CHECK REAL tone @ %.3fMHz", toneResults.i_tones[counter]);

   end

   // Imag results
   for (counter = 0; counter<toneResults.q_toneCount; counter++) begin
     if (display_tones_en == 1)
      $display("INSTANCE %m :CHECK IMAG tone @ %.3fMHz", toneResults.q_tones[counter]);
   end

   return passFail;

endfunction


//------------------------------------------------------------------------------
// Convert Freq to BINs
//------------------------------------------------------------------------------
function automatic int convFreqToBin ( 
   input real        freq       ,            // tone frequency
   input integer     fftLength  ,            // Length of the complex FFT buffer
   input real        fs         ,            // Sampling Frequency
   input bit         enable_display_messages // enable $display printing
 );


   return $rtoi(freq * fftLength / fs );

endfunction

//------------------------------------------------------------------------------
// Generate actual tone freq using neg_quad 
//------------------------------------------------------------------------------
function automatic real useNegQuad ( 
   input real        freq       ,            // tone frequency
   input bit         neg_quad   ,            // neg_quad setting
   input bit         enable_display_messages // enable $display printing
 );
 
  real freq_actual;

     if (neg_quad)
       freq_actual = -freq;
     else
       freq_actual = freq;

     if (enable_display_messages)
       $display("INSTANCE %m : Neg_Quad = %d, Actual Freq = %.5fHz ", neg_quad, freq_actual);

   return freq_actual;

endfunction



//------------------------------------------------------------------------------
// Main FFT checker module
//------------------------------------------------------------------------------
// change timescale to get accurate sample clock period measurement
`timescale 1ps / 1ps

module fft_checker  #(
  parameter  p_slice_number      = 0,
  parameter  p_connections       = 2
) (
   input  logic           clk,
   input  logic[127:0]    d_in,
   input  logic[127:0]    d_in_sig_det,
   input  logic           enable,
   // fft checker axi accessible
   input   logic   [7:0]  ds_ctrl          ,
   output  logic  [31:0]  ds_fft_exec_cnt  ,
   output  logic  [31:0]  ds_fft_max_level ,
   output  logic   [7:0]  ds_status        ,
   input   tile_cfg_t     tile_cfg         ,
   // output ports
   output logic           fft_completed  ,
   output logic           error
    );

   logic          adc_dac_n      ;     // 1 = adc, 0 = dac
   logic   [2:0]  decim          ;     // decimation (for adc), or interpolation for dac;
   logic   [1:0]  mixer          ;     // mixer_mode is r2c/c2c/r2r
   logic   [1:0]  mixer_type     ;     // bypassed/coarse/fine
   logic   [32:0] mixer_freq     ;     // mixer freq
   logic   [33:0] fs             ;     // sample freq
   logic          neg_quad       ;     // Negative Q
   logic          nyquist_zone   ;     // 0 = zone_1, 1 = zone_2
   logic          is_4g          ;     // 4g part used
   logic  [31:0]  tone0_freq     ;     // freq of tone generated by generator
   logic  [15:0]  tone0_level    ;     // level of tone generated by generator (for future use)


   // these signal will become configuration inputs
   // but initially use signals that can be forced for debugging code
   logic [1:0]  slice;
   // signal detect configuration
   logic [15:0] pos_threshold                 = 16'h4000;
   logic [3:0]  pos_threshold_count_threshold = 4'h3   ;

   logic        init                          = 0;
   logic [3:0]  pos_threshold_count           = 4'd0;
   logic [3:0]  neg_threshold_count           = 4'd0;

   logic        pos_threshold_detected        = 0;
   logic        neg_threshold_detected        = 0;
   logic        signal_detected               = 0; 
   logic        restart                       = 0;
   logic        fft_completed_int;  // internal fft completed signal ( as external signal needs to be 1 when enable = 0 due to inactive checkers being interpreted as passes)
   logic        mts_done;
 
   assign adc_dac_n      = tile_cfg.slice_cfg_setups[p_slice_number].adc_dac_n   ;
   assign decim          = tile_cfg.slice_cfg_setups[p_slice_number].decim       ;
   assign mixer          = tile_cfg.slice_cfg_setups[p_slice_number].mixer       ;
   assign mixer_type     = tile_cfg.slice_cfg_setups[p_slice_number].mixer_type  ;
   assign mixer_freq     = tile_cfg.slice_cfg_setups[p_slice_number].mixer_freq  ;
   assign fs             = tile_cfg.slice_cfg_setups[p_slice_number].adc_dac_n ? (tile_cfg.slice_cfg_setups[p_slice_number].fs / tile_cfg.slice_cfg_setups[p_slice_number].decim) : tile_cfg.slice_cfg_setups[p_slice_number].fs          ;
   assign neg_quad       = tile_cfg.slice_cfg_setups[p_slice_number].neg_quad    ;
   assign nyquist_zone   = tile_cfg.slice_cfg_setups[p_slice_number].nyquist_zone;
   assign is_4g          = tile_cfg.slice_cfg_setups[p_slice_number].is_4g       ;
   assign tone0_freq     = tile_cfg.slice_cfg_setups[p_slice_number].tone_freq   ;
   assign tone0_level    = tile_cfg.slice_cfg_setups[p_slice_number].tone_level  ;

   real  sample_clock_for_tile_0  = 9.83040 ;
   real  sample_clock_for_tile_1  = 9.83040 ;
   real  sample_clock_for_tile_2  = 9.83040 ;
   real  sample_clock_for_tile_3  = 9.83040 ;

   logic [32:0] sample_clock_hz ;  // sample clock of 6.4G is 33 bits
   int sample_clock_ps ;

   assign sample_clock_hz = sample_clock_for_tile_0 * 1000000000;
   assign sample_clock_ps = 64'd1000000000000 / sample_clock_hz;

//////////////
////
   logic [15:0] neg_threshold                           ; 
   int          fft_execution_count; // count the number of times the fft is run


   // the input signal has been normalised and biased around 0, 
   // so set pos and neg threshold equally around 0
   assign neg_threshold                 = ~pos_threshold + 1; // -ve of pos_threshold level

   // fft_complete is used as done signal in higher module
   // and all done signals must be high to indicate all slices are done.
   // It is therefore necessary to set fft_complete to 1, by default when not enabled

   assign fft_completed = fft_completed_int || ~enable ;

   // Detect input data activity, to infer starting next stage of processing
   always @ (posedge clk or negedge enable) begin

   if (enable == 1'b0) begin
     init <= 1'b0;
     pos_threshold_detected <= 1'b0;
     neg_threshold_detected <= 1'b0;
     signal_detected        <= 1'b0;
     pos_threshold_count    <= 4'd0;
     fft_execution_count    <= 4'd0;
   end
   else begin

     // detect signal activity
     // When input signal passes a +ve then -ve threhold N times the input is deemed
     // to be ready to analyse in fft

     if ((d_in_sig_det[15] == 1'b0) && (d_in_sig_det[15:0] > pos_threshold)) begin
      if ((init == 1'b0) || (neg_threshold_detected == 1'b1)) begin
         pos_threshold_detected <= 1;
         neg_threshold_detected <= 0;
         pos_threshold_count    <= pos_threshold_count + 1; 
         init                   <= 1'b1;
       end
     end


     if ((d_in_sig_det[15] == 1'b1) && (d_in_sig_det[15:0] < neg_threshold)) begin
      if ((init == 1'b0) || (pos_threshold_detected == 1'b1)) begin
         neg_threshold_detected <= 1;
         pos_threshold_detected <= 0;
         neg_threshold_count    <= neg_threshold_count + 1;
         init                   <= 1'b1;
       end
     end


     signal_detected <= 1'b1;
   end
 end

////
//////////////


//////////////
//// 
////  MAIN 
//// 

   cplxArray_t vec, tmp, data;                       // Arrays for data
   int i, vecIndex, tmpIndex;                        // index integers
   int              fftLength;                       // Length FFT variable
   toneArray_t      toneResults, tonePredict;        // Space for a tone in every bin, unrealistic, but will stop memory issues
   real             toneThreshold;
   real             clock_time_0, clock_period;
   real             current_time;
   real             clock_time_end;
   integer          time_period;
   int              sample_count = 0;
   bit              start_fft = 0;
   bit              enable_printing = 0;
   real             max_tone_level = 0;
   real             tone_threshold = 0;       
   bit              enable_display_messages = 1;
   bit              disable_display_messages = 0;
   bit              display_tones_on  = 1;
   bit              display_tones_off = 0;
   
   real             data_in_as_real;                 // Visualise data signal as REAL 
   logic     [15:0] d_in_pos;                        // Use to hold Absolute value of input data 
   int              d_in_int;                        // Use for integer conversion, to lead onto real conversion

   int              temp_count;
   logic     [15:0] d_in_d1;
   int              square_wave_count;
   
   int              adc_word_width = p_connections;     int              adc_dac_data_width;
   int              data_width;

   // fft checker axi accessible signals
   assign ds_fft_exec_cnt  = fft_execution_count;
   assign ds_fft_max_level = $rtoi(max_tone_level);
   assign ds_status        = {5'd0, error, start_fft, fft_completed_int} ;

   assign adc_dac_data_width = adc_dac_n ? ((is_4g == 1'b0 && mixer < 2) ? adc_word_width/2 : adc_word_width) : 1;
   wire clk_main;
   assign clk_main = clk;

   always @ (posedge clk_main or negedge enable) begin

   if (enable == 1'b0) begin
     fft_completed_int       = 0;
     error                   = 0;
     d_in_d1                <= 0;
     square_wave_count       = 0;
     mts_done                = 0;
   end
   else begin
     fftLength     = FFT_LEN;          // Assign to a Variable
     toneThreshold = 1;                // defaut tine detection threshold
     d_in_d1       <= d_in;



     // Measure Sample freq over the FFT length (for debug check only)
     // calculate the sample clock fs
     if (1) begin
       current_time = $time;                       
     end
      
      // create counter of 0 to FFT_LEN-1
      if (sample_count >= FFT_LEN - 1)
         sample_count <= 0;
      else begin
        if (adc_dac_n == 0)
         sample_count <= sample_count + 1;
      else
         sample_count <= sample_count + adc_dac_data_width;
      end
      // capture start time
      if (sample_count==0) begin
         clock_time_0 = $time;                       
       end

      // capture end time and calculate sample frequency
      if (sample_count == FFT_LEN-1) begin
        clock_time_end = $time;                       

        time_period = (clock_time_end - clock_time_0);     

      end
      
      // Use signal_detected to allow fft to be run
      if (signal_detected == 1'b0) begin
        start_fft <= 0;
      end 
      else begin
        if (sample_count >= FFT_LEN-1)
          start_fft <= 1;
      end


     // start fft after a valid signal has been detected
     // display information for 10th fft as visual debug initially
     if (start_fft == 1) begin

      // load arrays for each axis word   
      // do each word at a time for adc when data_width is >1
      for (data_width = 1; data_width <= adc_dac_data_width ; data_width++) begin
         // Deal with 2's comp conversion. Assign to signal for visualisation pre, struct assignment.
         case (data_width)
          1:  d_in_pos = d_in[15]  ? (~d_in[15  :0])   + 'd1  : d_in[15  :0]    ;
          2:  d_in_pos = d_in[31]  ? (~d_in[31  :16])  + 'd1  : d_in[31  :16]   ;
          3:  d_in_pos = d_in[47]  ? (~d_in[47  :32])  + 'd1  : d_in[47  :32]   ;
          4:  d_in_pos = d_in[63]  ? (~d_in[63  :48])  + 'd1  : d_in[63  :48]   ;
          5:  d_in_pos = d_in[79]  ? (~d_in[79  :64])  + 'd1  : d_in[79  :64]   ;
          6:  d_in_pos = d_in[95]  ? (~d_in[95  :80])  + 'd1  : d_in[95  :80]   ;
          7:  d_in_pos = d_in[111] ? (~d_in[111 :96])  + 'd1  : d_in[111 :96]   ;
          8:  d_in_pos = d_in[127] ? (~d_in[127 :112]) + 'd1  : d_in[127 :112]  ;
         endcase // data_width
         d_in_int = d_in[data_width*16 -1] ? (0 - d_in_pos) : d_in_pos;  // Effectively cast to an int so we can use ITOR
         data_in_as_real = $itor(d_in_int);                              // Convert to a REAL using ITOR
         data_in_as_real = data_in_as_real / 'h8000;                     // Normalise to 1
         // stop after writing FFT_LEN number of samples
         if (sample_count + data_width -1 < FFT_LEN) begin
           vec.arr[sample_count + data_width - 1].Re = data_in_as_real;  // Real  part - data
           data.arr[sample_count + data_width - 1].Re = data_in_as_real; // Real  part - data
           vec.arr[sample_count + data_width - 1].Im = 0 ;               // Image part - 0 (this is a real-only signal)
         end
      end

         // Perform fft and checks once, each time array is filled
         if (sample_count >= FFT_LEN -1) begin
           fft                  (vec, vecIndex, fftLength, tmp, tmpIndex);
           fft_execution_count <= fft_execution_count + 1;
           // detect maximum tone level and use to set the the tone detect threshold for disgarding low tones to display 
           if (fft_execution_count == 9) begin
              writeFftContent      (vec, data, fftLength);
              toneSearchBasic      (vec, fftLength, toneThreshold, fs, toneResults, disable_display_messages, max_tone_level);
              if (adc_dac_n == 0) begin
                tone_threshold = max_tone_level / 10; // set threshold to 10% of maximum level detected
              end
              else begin
                // set threshold to 20% of maximum level detected for adc (as there are more spurious tones)
                tone_threshold = max_tone_level / 5;
              end
              $display("INSTANCE %m :max_tone_level detected = %f, tone_threshold set = %f", max_tone_level, tone_threshold);
           end           
           if (fft_execution_count == 10) begin
              temp_count = 10; // match the last fft run
              toneSearchBasic      (vec, fftLength, tone_threshold, fs, toneResults, disable_display_messages, max_tone_level);
              fft_completed_int = 1;

              predictTonesPerSlice (tonePredict, tile_cfg, p_slice_number, display_tones_off);

              error = tonePredPassFail (tonePredict, fftLength, fs, toneResults, disable_display_messages);

              if (error == 0)
                $display("INSTANCE %m :tonePredPassFail TEST PASSED");
              if (error == 1)
                $display("INSTANCE %m :tonePredPassFail TEST FAILED");

           end

            // Update for fast_shutdown testing
            // keep running fft each time there are enough samples
            if (fft_execution_count == (temp_count +1)) begin
              toneSearchBasic      (vec, fftLength, toneThreshold, fs, toneResults, disable_display_messages, max_tone_level);
              temp_count = temp_count +1;
            end  

         end                     
     end 
   end
   end

////
//////////////


//////////////
////
//------------------------------------------------------------------------------
// Fill the Predictor Tone Array with predicted values
//------------------------------------------------------------------------------
function automatic void predictTonesPerSlice ( 
   ref   toneArray_t tonePredict,         // Tone arrays
   input tile_cfg_t   tile_cfg,           // Tile Configuration Information
   input int          slice_number,       // Which slice is this?
   input bit          display_tones_en    // Display the tones predicted
 );

   real exp_tone0_re;
   real exp_tone0_im;
   real exp_tone0_re_reflect;
   real exp_tone0_im_reflect;

   bit [1:0] mixer;    
   bit [1:0] mixer_type;           // bypass/coarse/fine
   real      tone0_freq;           // tone freq (can be +ve or -ve)
   real      fmixer;               // mixer freq
   real      fs;                   // sample freq
   logic     neg_quad;   
   bit       is_4g;
   real      ftone;
   
   is_4g       = tile_cfg.slice_cfg_setups[slice_number].is_4g;

   tonePredict.i_toneCount = 0;
   tonePredict.q_toneCount = 0;
   tonePredict.mag_toneCount = 0;   
   if (display_tones_en) begin
     $display("INSTANCE %m : ============================== ") ;
     $display("INSTANCE %m : predictTones PRINT OUTPUT START (predictTones) ") ;
     $display("INSTANCE %m : ============================== ") ;
   end
 
   
   if (tile_cfg.multiband == 0 || tile_cfg.slice_cfg_setups[slice_number].adc_dac_n == 1) begin
     predictTones(tonePredict,tile_cfg,slice_number,display_tones_en,slice_number);
     return;      
   end // if (tile_cfg.multiband == 0)

   //
   // Multiband - predict the tones received at this slice
   // 
   else begin

     // DAC
     // DAC_Mixer_Mode:
     // - I/Q->Real: 0
     // - I/Q->I/Q:  1
     //- Real->Real: 2
     //
     if (tile_cfg.slice_cfg_setups[slice_number].adc_dac_n == 0) begin

     case (tile_cfg.multiband)
       1: begin
         // 
         // Real->Real      : slice 0    = tones from 0,1	   
         //
         if ((tile_cfg.slice_cfg_setups[slice_number].mixer == 2) && (slice_number == 0) && (tile_cfg.slice_cfg_setups[0].enable == 1)) begin
           for (int ii=slice_number; ii<(slice_number+2); ii++) begin
             predictTones(tonePredict,tile_cfg,ii,display_tones_en,slice_number);
           end
         end
         //
         // I/Q->Real or I/Q : slice 0/1  = tones from 0,1
         //
         if ((tile_cfg.slice_cfg_setups[slice_number].mixer < 2) && (slice_number < 2) && (tile_cfg.slice_cfg_setups[0].enable == 1)) begin
           for (int ii=0; ii<2; ii++) begin
             predictTones(tonePredict,tile_cfg,ii,display_tones_en,slice_number);
           end
         end 
       
         // DAC: slices 2/3 and can be setup for single port...
         if (slice_number >= 2 && (tile_cfg.slice_cfg_setups[slice_number].enable == 1)) begin
           predictTones(tonePredict,tile_cfg,slice_number,display_tones_en,slice_number); 
         end       
       end
       2: begin
         //
         // Real->Real      : slice 2    = tones from 2,3 
         //
         if ((tile_cfg.slice_cfg_setups[slice_number].mixer == 2) && (slice_number == 2) && (tile_cfg.slice_cfg_setups[2].enable == 1)) begin
           for (int ii=slice_number; ii<(slice_number+2); ii++) begin
             predictTones(tonePredict,tile_cfg,ii,display_tones_en,slice_number);
           end
         end
         //
         // I/Q->Real or I/Q : slice 2/3  = tones from 2,3
         //	   
         if ((tile_cfg.slice_cfg_setups[slice_number].mixer < 2) && (slice_number >= 2) && (tile_cfg.slice_cfg_setups[2].enable == 1)) begin
           for (int ii=2; ii<4; ii++) begin
             predictTones(tonePredict,tile_cfg,ii,display_tones_en,slice_number);
           end
         end 
       
         // DAC: slices 0/1 and can be setup for single port...
         if (slice_number < 2 && (tile_cfg.slice_cfg_setups[slice_number].enable == 1)) begin
           predictTones(tonePredict,tile_cfg,slice_number,display_tones_en,slice_number); 
         end       
       end
       3: begin
         // 
         // Real->Real      : slice 0    = tones from 0,1
         // Real->Real      : slice 2    = tones from 2,3 
         //
         if ((tile_cfg.slice_cfg_setups[slice_number].mixer == 2) && (slice_number inside {0,2}) && (tile_cfg.slice_cfg_setups[0].enable == 1) && (tile_cfg.slice_cfg_setups[2].enable == 1)) begin
           for (int ii=slice_number; ii<(slice_number+2); ii++) begin
             predictTones(tonePredict,tile_cfg,ii,display_tones_en,slice_number);
           end
         end
         //
         // I/Q->Real or I/Q : slice 0/1  = tones from 0,1
         // I/Q->Real or I/Q : slice 2/3  = tones from 2,3
         //
         if ((tile_cfg.slice_cfg_setups[slice_number].mixer < 2) && (slice_number < 2) && (tile_cfg.slice_cfg_setups[0].enable == 1) && (tile_cfg.slice_cfg_setups[2].enable == 1)) begin
           for (int ii=0; ii<2; ii++) begin
             predictTones(tonePredict,tile_cfg,ii,display_tones_en,slice_number);
           end
         end
         if ((tile_cfg.slice_cfg_setups[slice_number].mixer < 2) && (slice_number >= 2) && (tile_cfg.slice_cfg_setups[0].enable == 1) && (tile_cfg.slice_cfg_setups[2].enable == 1)) begin
           for (int ii=2; ii<4; ii++) begin
             predictTones(tonePredict,tile_cfg,ii,display_tones_en,slice_number);
           end
         end 
       end
       4: begin
         // 
         // Real->Real      : slice 0    = tones from 0,1,2,3
         //
         if ((tile_cfg.slice_cfg_setups[slice_number].mixer == 2) && (slice_number == 0) && (tile_cfg.slice_cfg_setups[0].enable == 1)) begin
           for (int ii=0; ii<demo_tb_rfdac_utils_pkg::NUM_SLICES_IN_TILE; ii++) begin
             predictTones(tonePredict,tile_cfg,ii,display_tones_en,slice_number);
           end
         end	
         //
         // I/Q->Real or I/Q : slice 0/1  = tones from 0,1,2,3
         //
         if ((tile_cfg.slice_cfg_setups[slice_number].mixer < 2) && (slice_number inside {0,1}) && (tile_cfg.slice_cfg_setups[0].enable == 1)) begin
           for (int ii=0; ii<demo_tb_rfdac_utils_pkg::NUM_SLICES_IN_TILE; ii++) begin
             predictTones(tonePredict,tile_cfg,ii,display_tones_en,slice_number);
           end
         end      
       end
       5: begin
         //
         // I/Q->I/Q : slice 0/1  = tones from 0,1
         //
         if ((tile_cfg.slice_cfg_setups[slice_number].mixer < 2) && (slice_number inside {0,2}) && (tile_cfg.slice_cfg_setups[0].enable == 1)) begin
           for (int ii=0; ii<2; ii++) begin
             predictTones(tonePredict,tile_cfg,ii,display_tones_en,slice_number);
           end
         end
       end
       default: begin
	     $fatal(1,$sformatf("Bad value for tile_cfg.multiband, (%0d)",int'(tile_cfg.multiband)));	    
	   end
     endcase // case (tile_cfg.multiband)

   end // if (tile_cfg.slice_cfg_setups[slice_number].adc_dac_n = 0)
   end // else: !if(tile_cfg.multiband == 0)
       
   if (display_tones_en) begin
     $display("INSTANCE %m : ============================== ") ;
     $display("INSTANCE %m : predictTones PRINT OUTPUT END (predictTones)   ") ;
     $display("INSTANCE %m : ============================== ") ;
   end

endfunction // predictTonesPerSlice

//------------------------------------------------------------------------------
// Fill the Predictor Tone Array with predicted values
//------------------------------------------------------------------------------
function automatic void predictTones ( 
   ref   toneArray_t tonePredict,  // Tone arrays
   input tile_cfg_t   tile_cfg,             // Tile Configuration Information	   
   input int          slice_index,
   input bit          display_tones_en,     // display the tones detected
   input int          slice_index_digital   // ADC only, digital output mixer frequency
 ); 

   bit  [1:0]   mixer;           // mixer_mode c2r/c2c/r2r
   bit  [1:0]   mixer_type;      // bypass/coarse/fine
   real         ftone;           // tone freq (can be +ve or -ve)
   real         fmixer;          // mixer freq
   real         fmixer_dig;      // mixer freq of this slice
   real         fs;              // sample freq
   bit          is_4g;           // bypass/coarse/fine
   bit [15:0]   decim;           // Decimation mode
   
   real         fm;              // mixer frequency
   real         fm_pos;          // +ve mixer frequency
   real         fft_unit;        // size of FFT bin
   real         fm_bin;          // bin containing mixer frequency
   int          fm_bin_rem;      // does the mixer frequency map into an FFT bin exactly
   logic [31:0] fm_normalized;   // FFT bin containing mixer frequency
   
   real exp_tone0_re;
   real exp_tone0_im;

   // use neg_quad to produce -ve freq if needed 
   ftone = useNegQuad(tile_cfg.slice_cfg_setups[slice_index].tone_freq, 
                      tile_cfg.slice_cfg_setups[slice_index].neg_quad, 
                      disable_display_messages);
   if (display_tones_en) begin
     $display("INSTANCE %m : tone (Hz can be +ve or -ve) = %f ", ftone);
   end
   
   mixer       = tile_cfg.slice_cfg_setups[slice_index].mixer;          
   mixer_type  = tile_cfg.slice_cfg_setups[slice_index].mixer_type;
   fmixer      = $itor(tile_cfg.slice_cfg_setups[slice_index].mixer_freq);
   fmixer_dig  = $itor(tile_cfg.slice_cfg_setups[slice_index_digital].mixer_freq);
   fs          = tile_cfg.slice_cfg_setups[slice_index].adc_dac_n ? (tile_cfg.slice_cfg_setups[slice_index].fs / tile_cfg.slice_cfg_setups[slice_index].decim) : tile_cfg.slice_cfg_setups[slice_index].fs;
   is_4g       = tile_cfg.slice_cfg_setups[slice_index].is_4g;
   decim       = tile_cfg.slice_cfg_setups[slice_index_digital].decim;
   
   if (display_tones_en) begin
     $display("INSTANCE %m :[%0d] Sample freq fs (Hz)                               = %f", slice_index,fs);
     $display("INSTANCE %m :[%0d] Mixer freq mixer_freq (Hz)                        = %d", slice_index,fmixer);
     $display("INSTANCE %m :[%0d] Mixer freq mixer (r2c/c2c/r2)                     = %d", slice_index,mixer);
     $display("INSTANCE %m :[%0d] Mixer freq mixer_type (bypassed/coarse/fine)      = %d", slice_index,mixer_type);
     $display("INSTANCE %m :[%0d] Tone Freq (passed to predictTones function)       = %f", slice_index,ftone);
     
     $display("INSTANCE %m : ============================== ") ;
     $display("INSTANCE %m : predictTones PRINT OUTPUT START (predictTones) ") ;
     $display("INSTANCE %m : ============================== ") ;

     $display("INSTANCE %m : tone (Hz can be +ve or -ve) = %f ", ftone);
   end

   if (mixer < 2) begin // IQ2R or IQ2IQ

      if(mixer_type == 0) begin  // bypass

         if (display_tones_en) begin
           $display("INSTANCE %m : IQ2R or IQ2IQ with Bypass  ");
         end
         exp_tone0_re = fmixer + ftone;
         if (exp_tone0_re < 0) 
            // -ve expected tone will be moved up to +ve freq band by adding + fs 
            exp_tone0_re = fs + exp_tone0_re; 

        
         exp_tone0_im = fmixer + ftone;
         if (exp_tone0_im < 0)
            // -ve expected tone will be moved up to +ve freq band by adding + fs 
            exp_tone0_im = fs + exp_tone0_im; 
            
         // Write predicted (I) tones to an array 
         updatePredictedToneArray(exp_tone0_re, fs, tonePredict, 1, 0, display_tones_en);         
  
         // Write predicted (Q) tones to an array
         updatePredictedToneArray(exp_tone0_im, fs, tonePredict, 0, 1, display_tones_en);       

      end
      else begin  // coarse or fine mixer
      
         if (adc_dac_n == 1'b0) begin
           // DAC

           if (display_tones_en) begin
             $display("INSTANCE %m : IQ2R or IQ2IQ with Coarse or Fine Mixer  ");
           end
           exp_tone0_re = fmixer + ftone;
           if (exp_tone0_re < 0)
              // -ve expected tone will be moved up to +ve freq band by adding + fs 
              exp_tone0_re = fs + exp_tone0_re; 
           
           exp_tone0_im = fmixer + ftone;
           if (exp_tone0_im < 0)
              // -ve expected tone will be moved up to +ve freq band by adding + fs 
              exp_tone0_im = fs + exp_tone0_im; 
               
           // Write predicted (I) tones to an array 
           updatePredictedToneArray(exp_tone0_re, fs, tonePredict, 1, 0, display_tones_en);  
           
           // Write predicted (Q) tones to an array
           updatePredictedToneArray(exp_tone0_im, fs, tonePredict, 0, 1, display_tones_en);
         
        end
        else begin
          // ADC
        
           if (mixer == 0) begin
             if (display_tones_en) begin
               $display("INSTANCE %m : IQ2R with Coarse or Fine Mixer  ");
             end
             
             // First tone in the data is mixed to the mixer frequency of this slice
             exp_tone0_re = fmixer_dig - (fmixer_dig - ftone);
             if (exp_tone0_re < 0)
                // -ve expected tone will be moved up to +ve freq band by adding + fs 
                exp_tone0_re = fs + exp_tone0_re;
             if (exp_tone0_re > fs)
                // tone above Fs/2 will be moved down by subtracting fs 
                exp_tone0_re = exp_tone0_re - fs; 
             
             // Write predicted (I) tones to an array
             updatePredictedToneArray(exp_tone0_re, fs, tonePredict, 1, 0, display_tones_en);  
             
             // Write predicted (Q) tones to an array
             updatePredictedToneArray(exp_tone0_re, fs, tonePredict, 0, 1, display_tones_en);
           end
           else begin
             if (display_tones_en) begin
               $display("INSTANCE %m : IQ2IQ with Coarse or Fine Mixer  ");
             end
             
             // First tone in the data is mixed to the mixer frequency of this slice
             exp_tone0_re = fmixer_dig - (fmixer_dig - ftone);
             if (exp_tone0_re < 0)
                // -ve expected tone will be moved up to +ve freq band by adding + fs 
                exp_tone0_re = fs + exp_tone0_re;
             if (exp_tone0_re > fs)
                // tone above Fs/2 will be moved down by subtracting fs 
                exp_tone0_re = exp_tone0_re - fs; 
             
             // Write predicted (I) tones to an array
             updatePredictedToneArray(exp_tone0_re, fs, tonePredict, 1, 0, display_tones_en);  
             
             // Write predicted (Q) tones to an array
             updatePredictedToneArray(exp_tone0_re, fs, tonePredict, 0, 1, display_tones_en);
           end  
        end
      end
   end 
   else begin  // R2R
     if (display_tones_en) begin
       $display("INSTANCE %m : R2R with Bypass  ");
     end
     exp_tone0_re = fmixer + ftone;
     if (exp_tone0_re < 0)
       // -ve expected tone will be moved up to +ve freq band by adding + fs 
       exp_tone0_re = fs + exp_tone0_re;     

     exp_tone0_im = fmixer + ftone;
     if (exp_tone0_im < 0)
       // -ve expected tone will be moved up to +ve freq band by adding + fs 
       exp_tone0_im = fs + exp_tone0_im; 
         
     // Write predicted (I) tones to an array 
     updatePredictedToneArray(exp_tone0_re, fs, tonePredict, 1, 0, display_tones_en);  

     // Write predicted (Q) tones to an array
     updatePredictedToneArray(exp_tone0_im, fs, tonePredict, 0, 1, display_tones_en);

   end // else: !if(mixer < 2)

   if (display_tones_en) begin
     $display("INSTANCE %m : ============================== ") ;
     $display("INSTANCE %m : predictTones PRINT OUTPUT END (predictTones)   ") ;
     $display("INSTANCE %m : ============================== ") ;
   end

endfunction : predictTones

//------------------------------------------------------------------------------
// Function: updatePredictedToneArray
//------------------------------------------------------------------------------
function automatic void updatePredictedToneArray (real              exp_tone,
                                                  real              fs,
                                                  ref   toneArray_t tonePredict,  // Tone arrays
                                                  input bit         update_i_tones  =1,
                                                  input bit         update_q_tones  =0,
                                                  input bit         display_tones_en); 

  real exp_tone_reflect = fs - exp_tone; 

  if (update_i_tones) begin
    if (display_tones_en) begin
      $display("INSTANCE %m : (I) exp_tone (Hz) = %f ", exp_tone);
      $display("INSTANCE %m : (I) exp_tone_reflect (Hz) = %f ", exp_tone_reflect);
    end

  
    if (tone_not_in_array(exp_tone,tonePredict.i_tones,tonePredict.i_toneCount)) begin
      tonePredict.i_tones[tonePredict.i_toneCount] = exp_tone;
      tonePredict.i_toneCount++; 
    end

    if (tone_not_in_array(exp_tone_reflect,tonePredict.i_tones,tonePredict.i_toneCount)) begin
      tonePredict.i_tones[tonePredict.i_toneCount] = exp_tone_reflect;
      tonePredict.i_toneCount++; 
    end
  
    if (display_tones_en)
      $display("INSTANCE %m :tonePredict.i_toneCount = %d", tonePredict.i_toneCount );
  end

  if (update_q_tones) begin
    if (display_tones_en) begin
      $display("INSTANCE %m : (Q) exp_tone (Hz) = %f ", exp_tone);
      $display("INSTANCE %m : (Q) exp_tone_reflect (Hz) = %f ", exp_tone_reflect);
    end

    if (tone_not_in_array(exp_tone,tonePredict.q_tones,tonePredict.q_toneCount)) begin
      tonePredict.q_tones[tonePredict.q_toneCount] = exp_tone;
      tonePredict.q_toneCount++; 
    end

    if (tone_not_in_array(exp_tone_reflect,tonePredict.q_tones,tonePredict.q_toneCount)) begin
      tonePredict.q_tones[tonePredict.q_toneCount] = exp_tone_reflect;
      tonePredict.q_toneCount++; 
    end

    if (display_tones_en)
      $display("INSTANCE %m :tonePredict.q_toneCount = %d", tonePredict.q_toneCount );   
  end

  // Update the mag tones
  //
  if (update_i_tones || update_q_tones) begin

    if (tone_not_in_array(exp_tone,tonePredict.mag_tones,tonePredict.mag_toneCount)) begin
      tonePredict.mag_tones[tonePredict.mag_toneCount] = exp_tone;
      tonePredict.mag_toneCount++; 
    end

    if (tone_not_in_array(exp_tone_reflect,tonePredict.mag_tones,tonePredict.mag_toneCount)) begin
      tonePredict.mag_tones[tonePredict.mag_toneCount] = exp_tone_reflect;
      tonePredict.mag_toneCount++; 
    end   

    if (display_tones_en)
       $display("INSTANCE %m :tonePredict.mag_toneCount = %d", tonePredict.mag_toneCount );
  end

endfunction

//------------------------------------------------------------------------------
// Function: tone_not_in_array
//------------------------------------------------------------------------------
function automatic bit tone_not_in_array (real  new_exp_tone,
                                          real  current_exp_tones[FFT_LEN],
                                          int   max_tone_index); 
  bit tone_exists_in_array = 0;

  for (int ii=0; ii<= max_tone_index; ii++) begin
    if (current_exp_tones[ii] == new_exp_tone) begin
      tone_exists_in_array = 1;
    end
  end

  return !(tone_exists_in_array);
endfunction

////
//////////////


endmodule // fft_checker
