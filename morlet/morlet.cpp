/*#######################################################################
# RDOS operating system
# Copyright (C) 1988-2020, Leif Ekblad
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version. The only exception to this rule
# is for commercial usage in embedded systems. For information on
# usage in commercial embedded systems, contact embedded@rdos.net
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
#
# The author of this program may be contacted at leif@rdos.net
#
# morlet.cpp
# Complex morlet creator
#
########################################################################*/

#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

#define PI              3.1415926535897932384626433832795028841971693993751

/*##########################################################################
#
#   Name       : main
#
#   In params..: *
#   Out params.: *
#   Returns....: *
#
##########################################################################*/
void main()
{
    int p;
    int size;
    int ival;
    long long lval;
    double dval;
    double rho;
    double mult;
    double gaus;
    double incr;
    double sum = 0.0;
    double norm;
    double i, r;
    double f;
    double fs;
    double scale;
    int periods;
    double *SinArr;
    double *CosArr;
    int rot;

    printf("Input sampling frequency\r\n");
    scanf("%d", &ival);
    fs = (double)ival;

    printf("Input frequency\r\n");
    scanf("%d", &ival);
    f = (double)ival;

    incr = 2.0 * PI * f / fs;
    sum = 0.0;

    printf("Input periods\r\n");
    scanf("%d", &ival);

    periods = ival;

    dval = (double)periods * fs / f;
    size = (int)(dval + 0.5);
    if ((size % 2) == 0)
        size++;

    size = size / 2;

    rho = (double)periods / incr;
    mult = -0.5 / rho / rho;

    CosArr = new double[size];
    SinArr = new double[size];

    for (p = 0; p < size; p++)
    {
        dval = (double)(p + 1);
        gaus = exp(mult * dval * dval);
        r = gaus * cos(dval * incr);

        CosArr[p] = r;
        sum += r * r;

        i = gaus * sin(dval * incr);
        SinArr[p] = i;
        sum += i * i;
    }

    scale = 1.0 + 2.0 * sum;

    rot = 0;

    while (scale >= 2.0)
    {
        rot++;
        scale = scale / 2.0;
    }

    printf("rot: %d, size: %d\r\n", rot, size);

    printf("real: ");

    for (p = -size + 1; p <= 0; p++)
    {
        r = CosArr[-p] / scale;

        if (r >= 0.0)
            ival = (int)(32767.0 * r + 0.5);
        else
            ival = -(int)(-32767.0 * r + 0.5);

        printf("%d, ", ival);
    }

    r = 1.0 / scale;
    ival = (int)(32767.0 * r + 0.5);
    printf("%d, ", ival);

    for (p = 0; p < size; p++)
    {
        r = CosArr[p] / scale;

        if (r >= 0.0)
            ival = (int)(32767.0 * r + 0.5);
        else
            ival = -(int)(-32767.0 * r + 0.5);

        printf("%d", ival);

        if (p == size - 1)
            printf("\r\n");
        else
            printf(", ");
    }

    printf("imag: ");

    for (p = -size + 1; p <= 0; p++)
    {
        r = -SinArr[-p] / scale;

        if (r >= 0.0)
            ival = (int)(32767.0 * r + 0.5);
        else
            ival = -(int)(-32767.0 * r + 0.5);

        printf("%d, ", ival);
    }

    printf("0, ");

    for (p = 0; p < size; p++)
    {
        r = SinArr[p] / scale;

        if (r >= 0.0)
            ival = (int)(32767.0 * r + 0.5);
        else
            ival = -(int)(-32767.0 * r + 0.5);

        printf("%d", ival);

        if (p == size - 1)
            printf("\r\n");
        else
            printf(", ");
    }
}
