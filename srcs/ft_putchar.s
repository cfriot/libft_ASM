# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_putchar.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cfriot <cfriot@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/30 18:20:05 by cfriot            #+#    #+#              #
#    Updated: 2015/03/30 19:37:09 by cfriot           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

%define MACH_SYSCALL(nb)	0x2000000 | nb
%define WRITE				4

section .text
		global _ft_putchar

_ft_putchar:
		push rdi
		mov rsi, rsp
		mov rdi, 1
		mov rdx, 1
		mov rax, MACH_SYSCALL(WRITE)
		syscall
		pop rdi
		ret
