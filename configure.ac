AC_INIT([slogan], [1.0], [anmitalidev@nuros.org])
AC_CONFIG_AUX_DIR([build-aux])
AC_CANONICAL_HOST
AM_INIT_AUTOMAKE([foreign -Wall -Werror subdir-objects])

dnl Check for the host CPU architecture and set conditionals
case $host_cpu in
  x86_64)
    isa_dir=x86_64
    ;;
  i?86)
    isa_dir=x86
    ;;
  riscv64)
    isa_dir=rv64gc
    ;;
  riscv32)
    isa_dir=rv32gc
    ;;
  mips*)
    isa_dir=mips
    ;;
  *)
    AC_MSG_ERROR([Unsupported architecture: $host_cpu])
    ;;
esac

AM_CONDITIONAL([ARCH_X86_64], [test "x$isa_dir" = "xx86_64"])
AM_CONDITIONAL([ARCH_X86], [test "x$isa_dir" = "xx86"])
AM_CONDITIONAL([ARCH_RV64GC], [test "x$isa_dir" = "xrv64gc"])
AM_CONDITIONAL([ARCH_RV32GC], [test "x$isa_dir" = "xrv32gc"])
AM_CONDITIONAL([ARCH_MIPS], [test "x$isa_dir" = "xmips"])

AC_PROG_CC
AM_PROG_AS

AC_CONFIG_FILES([Makefile src/Makefile])
AC_OUTPUT
