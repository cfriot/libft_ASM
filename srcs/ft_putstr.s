# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_putstr.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cfriot <cfriot@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/26 18:06:39 by cfriot            #+#    #+#              #
#    Updated: 2015/03/30 20:00:34 by cfriot           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

%define MACH_SYSCALL(nb)	0x2000000 | nb
%define WRITE				4

section .data

section .text
		global _ft_putstr
		extern _ft_strlen

_ft_putstr:
		push rdi
		call _ft_strlen
		cmp rax, 0
		je end
		pop rsi
		mov rdx, rax
		mov rdi, 1
		mov rax, MACH_SYSCALL(WRITE)
		syscall
		ret

end:
		pop rsi
		ret
