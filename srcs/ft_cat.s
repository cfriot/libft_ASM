# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_cat.s                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cfriot <cfriot@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/27 14:28:31 by cfriot            #+#    #+#              #
#    Updated: 2015/03/30 19:52:14 by cfriot           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
%define MACH_SYSCALL(nb)		0x2000000 | nb
%define READ					3
%define BUFF_SIZE				1024
%define WRITE					4

section .data
			error:
				.string db "error fd"

section .bss
			buffer: resb BUFF_SIZE


section .text
			global _ft_cat
			extern _ft_bzero
			extern _ft_putstr
			extern _ft_puts

_ft_cat:
			mov r12, rdi

begin:
			lea rdi, [rel buffer]
			mov rsi, BUFF_SIZE
			call _ft_bzero
			mov rdi, r12
			lea rsi, [rel buffer]
			mov rdx, BUFF_SIZE
			mov rax, MACH_SYSCALL(READ)
			syscall
			jc error_handling
			cmp rax, 0x00
			je end
			lea rdi, [rel buffer]
			call _ft_putstr
			jmp begin

error_handling:
			lea rdi, [rel error.string]
			call _ft_puts

end:
			ret
