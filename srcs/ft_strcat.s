# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcat.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cfriot <cfriot@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/26 17:31:46 by cfriot            #+#    #+#              #
#    Updated: 2015/03/30 21:56:19 by cfriot           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_strcat

_ft_strcat:
		mov r9, 0
		mov r8, 0

s1_len_loop:
		cmp [rdi + r8], byte 0
		je strcat_core
		inc r8
		jmp s1_len_loop

strcat_core:
		cmp [rsi + r9], byte 0
		je end
		mov rcx, [rsi + r9]
		mov [rdi + r8], rcx
		inc r8
		inc r9
		jmp strcat_core

end:
		mov rax, rdi
		ret
