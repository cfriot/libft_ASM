# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isdigit.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cfriot <cfriot@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/26 17:50:03 by cfriot            #+#    #+#              #
#    Updated: 2015/03/30 15:42:05 by cfriot           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_isdigit

_ft_isdigit:
		cmp rdi, 48
		jl nop
		cmp rdi, 57
		jg nop
		mov rax, 1
		ret

nop:
		mov rax, 0
		ret
