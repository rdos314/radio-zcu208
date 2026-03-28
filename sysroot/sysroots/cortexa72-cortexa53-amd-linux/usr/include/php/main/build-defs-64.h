/*
   +----------------------------------------------------------------------+
   | Copyright (c) The PHP Group                                          |
   +----------------------------------------------------------------------+
   | This source file is subject to version 3.01 of the PHP license,      |
   | that is bundled with this package in the file LICENSE, and is        |
   | available through the world-wide-web at the following url:           |
   | https://www.php.net/license/3_01.txt                                 |
   | If you did not receive a copy of the PHP license and are unable to   |
   | obtain it through the world-wide-web, please send a note to          |
   | license@php.net so we can mail you a copy immediately.               |
   +----------------------------------------------------------------------+
   | Author: Stig Sæther Bakken <ssb@php.net>                             |
   +----------------------------------------------------------------------+
*/

#define CONFIGURE_COMMAND " '../php-8.2.26/configure'  '--build=x86_64-linux' '--host=aarch64-amd-linux' '--target=aarch64-amd-linux' '--prefix=/usr' '--exec_prefix=/usr' '--bindir=/usr/bin' '--sbindir=/usr/sbin' '--libexecdir=/usr/libexec' '--datadir=/usr/share' '--sysconfdir=/etc' '--sharedstatedir=/com' '--localstatedir=/var' '--libdir=/usr/lib' '--includedir=/usr/include' '--oldincludedir=/usr/include' '--infodir=/usr/share/info' '--mandir=/usr/share/man' '--disable-silent-rules' '--disable-dependency-tracking' '--with-libtool-sysroot=' '--enable-mbstring' '--enable-fpm' '--with-libdir=lib' '--with-gettext=/usr/lib/..' '--with-zlib=/usr/lib/..' '--with-iconv=/usr/lib/..' '--with-bz2=/usr' '--with-config-file-path=/etc/php/apache2-php8' 'ac_cv_c_bigendian_php=no' '--enable-sockets' '--enable-pcntl' '--enable-shared' '--disable-rpath' '--with-pic' '--libdir=/usr/lib/php8' '--disable-static' '--with-imap=' '--with-imap-ssl=' '--enable-ipv6' '--disable-mbregex' '--with-mysqli=mysqlnd' '--with-pdo-mysql=mysqlnd' '--enable-opcache' '--with-openssl' '--without-pgsql' '--disable-soap' '--with-sqlite3=/usr/lib/..' '--with-pdo-sqlite=/usr/lib/..' '--with-valgrind=no' '--enable-nls' 'build_alias=x86_64-linux' 'host_alias=aarch64-amd-linux' 'target_alias=aarch64-amd-linux' 'PKG_CONFIG_PATH=/usr/lib/pkgconfig:/usr/share/pkgconfig' 'PKG_CONFIG_LIBDIR=/usr/lib/pkgconfig' 'CC=aarch64-amd-linux-gcc -mcpu=cortex-a72.cortex-a53+crc -mbranch-protection=standard -fstack-protector-strong -O2 -D_FORTIFY_SOURCE=2 -Wformat -Wformat-security -Werror=format-security --sysroot=' 'CFLAGS= -O2 -pipe -g -feliminate-unused-debug-types -fcanon-prefix-map -D_GNU_SOURCE -D_LARGEFILE64_SOURCE -g -DPTYS_ARE_GETPT -DPTYS_ARE_SEARCHED -I/usr/include/apache2 -DHAVE_LIBDL ' 'LDFLAGS=-Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed -fcanon-prefix-map -Wl,-z,relro,-z,now -ldl ' 'CPPFLAGS=' 'CPP=aarch64-amd-linux-gcc -E --sysroot= -mcpu=cortex-a72.cortex-a53+crc -mbranch-protection=standard -fstack-protector-strong -O2 -D_FORTIFY_SOURCE=2 -Wformat -Wformat-security -Werror=format-security' 'CXX=aarch64-amd-linux-g++ -mcpu=cortex-a72.cortex-a53+crc -mbranch-protection=standard -fstack-protector-strong -O2 -D_FORTIFY_SOURCE=2 -Wformat -Wformat-security -Werror=format-security --sysroot=' 'CXXFLAGS= -O2 -pipe -g -feliminate-unused-debug-types -fcanon-prefix-map -fvisibility-inlines-hidden'"
#define PHP_ODBC_CFLAGS	""
#define PHP_ODBC_LFLAGS		""
#define PHP_ODBC_LIBS		""
#define PHP_ODBC_TYPE		""
#define PHP_OCI8_DIR			""
#define PHP_OCI8_ORACLE_VERSION		""
#define PHP_PROG_SENDMAIL	"/usr/sbin/sendmail"
#define PEAR_INSTALLDIR         ""
#define PHP_INCLUDE_PATH	".:"
#define PHP_EXTENSION_DIR       "/usr/lib/php8/extensions/no-debug-non-zts-20220829"
#define PHP_PREFIX              "/usr"
#define PHP_BINDIR              "/usr/bin"
#define PHP_SBINDIR             "/usr/sbin"
#define PHP_MANDIR              "/usr/share/man"
#define PHP_LIBDIR              "/usr/lib/php8"
#define PHP_DATADIR             "/usr/share"
#define PHP_SYSCONFDIR          "/etc"
#define PHP_LOCALSTATEDIR       "/var"
#define PHP_CONFIG_FILE_PATH    "/etc/php/apache2-php8"
#define PHP_CONFIG_FILE_SCAN_DIR    ""
#define PHP_SHLIB_SUFFIX        "so"
#define PHP_SHLIB_EXT_PREFIX    ""
