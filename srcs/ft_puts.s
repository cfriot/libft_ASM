# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_puts.s                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cfriot <cfriot@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/26 18:06:39 by cfriot            #+#    #+#              #
#    Updated: 2015/03/30 19:52:17 by cfriot           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

%define MACH_SYSCALL(nb)	0x2000000 | nb
%define WRITE				4

section .data
		null:
			.string db "(null)"
			.len equ $ - null.string

section .text
		global _ft_puts
		extern _ft_strlen
		extern _ft_putchar

_ft_puts:
		cmp rdi, 0x00
		je null_mess
		mov r14, rdi
		call _ft_strlen
		cmp rax, 0
		je end
		mov rsi, r14
		mov rdx, rax
		mov rdi, 1
		mov rax, MACH_SYSCALL(WRITE)
		syscall
		jmp end

null_mess:
		mov rdi, 1
		lea rsi, [rel null.string]
		mov rdx, null.len
		mov rax, MACH_SYSCALL(WRITE)
		syscall

end:
		mov rdi, 10
		call _ft_putchar
		ret
