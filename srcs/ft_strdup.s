# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strdup.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cfriot <cfriot@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/26 18:38:25 by cfriot            #+#    #+#              #
#    Updated: 2015/03/30 17:54:08 by cfriot           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
		global _ft_strdup
		extern _malloc
		extern _ft_strlen
		extern _ft_memcpy

_ft_strdup:
		push rdi
		call _ft_strlen
		inc rax
		mov rdi, rax
		mov rdx, rax
		call _malloc
		pop rsi
		mov rdi, rax
		call _ft_memcpy
		ret
