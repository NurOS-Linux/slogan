bin_PROGRAMS = slogan
slogan_SOURCES =

if ARCH_X86_64
slogan_SOURCES += x86_64/slogan.S
endif

if ARCH_X86
slogan_SOURCES += x86/slogan.S
endif

if ARCH_RV64GC
slogan_SOURCES += rv64gc/slogan.S
endif

if ARCH_RV32GC
slogan_SOURCES += rv32gc/slogan.S
endif

if ARCH_MIPS
slogan_SOURCES += mips/slogan.S
endif
