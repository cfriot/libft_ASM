# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_memcpy.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cfriot <cfriot@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/26 18:34:58 by cfriot            #+#    #+#              #
#    Updated: 2015/03/30 17:45:37 by cfriot           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
		global _ft_memcpy

_ft_memcpy:
		push rdi
		mov rcx, rdx
		cld
		rep movsb
		pop rax
		ret
