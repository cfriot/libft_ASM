# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isprint.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cfriot <cfriot@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/26 17:52:03 by cfriot            #+#    #+#              #
#    Updated: 2015/03/30 15:44:22 by cfriot           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_isprint

_ft_isprint:
		cmp rdi, 32
		jl nop
		cmp rdi, 126
		jg nop
		mov rax, 1
		ret

nop:
		mov rax, 0
		ret
