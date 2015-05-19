# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_memset.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cfriot <cfriot@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/26 18:29:23 by cfriot            #+#    #+#              #
#    Updated: 2015/03/27 20:17:27 by cfriot           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
		global _ft_memset

_ft_memset:
		push rdi
		mov rcx, rdx
		mov r14, rsi
		mov rsi, rdi
		mov rax, r14
		rep stosb
		pop rax
		ret
