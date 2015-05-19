# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_puts_fd.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cfriot <cfriot@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/26 18:06:39 by cfriot            #+#    #+#              #
#    Updated: 2015/03/30 20:13:08 by cfriot           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

%define MACH_SYSCALL(nb)	0x2000000 | nb
%define WRITE				4

section .data
		null:
			.string db "(null)"
			.len equ $ - null.string

section .text
		global _ft_puts_fd
		extern _ft_strlen
		extern _ft_putchar_fd

_ft_puts_fd:
		cmp rsi, 0
		jl error
		push rsi
		cmp rdi, 0x00
		je null_mess
		mov r14, rdi
		call _ft_strlen
		cmp rax, 0
		je end
		mov rsi, r14
		mov rdx, rax
		pop rdi
		push rdi
		mov rax, MACH_SYSCALL(WRITE)
		syscall
		jmp end

null_mess:
		pop rdi
		push rdi
		lea rsi, [rel null.string]
		mov rdx, null.len
		mov rax, MACH_SYSCALL(WRITE)
		syscall

end:
		mov rdi, 10
		pop rsi
		call _ft_putchar_fd
		ret

error:
		ret
