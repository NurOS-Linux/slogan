# slogan

> Shine brighter than the rest by thinking different

**slogan** is a lightweight, bare-metal assembly utility. It serves as a multi-architecture demonstration, aiming to implement the same low-level logic across various Instruction Set Architectures (ISAs).

## Supported Architectures

The goal is to support the following ISAs:

- [x] **x86_64** (AMD64)
- [ ] **x86** (i386)
- [ ] **RISC-V 64GC** (rv64gc)
- [ ] **RISC-V 32GC** (rv32gc)
- [ ] **MIPS**

## Build Requirements

- GNU Make
- GNU Autoconf
- GNU Automake
- GCC (or a compatible assembler/compiler for the target architecture)

## Installation & Usage

### 1. Configure the build system

```bash
autoreconf -i
./configure
```

### 2. Build the project

```bash
make
```

### 3. Run

```bash
./src/slogan
```

## Contributing

This project uses the GNU Autotools system. To add support for a new architecture:
1. Create a new directory in `src/` (e.g., `src/arm64`).
2. Implement the assembly logic in `src/<arch>/slogan.S`.
3. Update `configure.ac` to detect the new host CPU.
4. Update `src/Makefile.am` to conditionally compile the new source.

## License

This project is licensed under the **GNU General Public License v3.0**.
See the [LICENSE](LICENSE) file for details.
