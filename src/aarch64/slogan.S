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
    mov x8, 64          /* syscall: sys_write */
    mov x0, 1           /* fd: stdout */
    ldr x1, =msg        /* buf: msg */
    mov x2, len         /* count: len */
    svc 0               /* supervisor call */

    /* exit(0) */
    mov x8, 93          /* syscall: sys_exit */
    mov x0, 0           /* status: 0 */
    svc 0               /* supervisor call */
