# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_putchar_fd.s                                     :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cfriot <cfriot@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/30 18:20:05 by cfriot            #+#    #+#              #
#    Updated: 2015/03/30 20:24:41 by cfriot           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

%define MACH_SYSCALL(nb)	0x2000000 | nb
%define WRITE				4

section .text
		global _ft_putchar_fd

_ft_putchar_fd:
		push rdi
		mov rsi, r15
		mov rsi, rsp
		mov rdi, r15
		mov rdx, 1
		mov rax, MACH_SYSCALL(WRITE)
		syscall
		pop rdi
		ret
