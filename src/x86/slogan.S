/*
 * slogan - Output the project slogan
 * Copyright (C) 2026 AnmiTaliDev <anmitalidev@nuros.org>
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 */

.section .data
msg:
    .ascii "Shine brighter than the rest by thinking different\n"
    len = . - msg

.section .text
.global main
main:
    /* write(1, msg, len) */
    mov $4, %eax        /* syscall: sys_write (4 in i386) */
    mov $1, %ebx        /* fd: stdout */
    mov $msg, %ecx      /* buf: msg */
    mov $len, %edx      /* count: len */
    int $0x80           /* syscall interrupt */

    /* exit(0) */
    mov $1, %eax        /* syscall: sys_exit (1 in i386) */
    xor %ebx, %ebx      /* status: 0 */
    int $0x80           /* syscall interrupt */
