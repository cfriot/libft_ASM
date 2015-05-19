# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isupper.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cfriot <cfriot@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/26 17:45:24 by cfriot            #+#    #+#              #
#    Updated: 2015/03/30 17:11:38 by cfriot           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_isupper

_ft_isupper:
		cmp rdi, 65
		jl nop
		cmp rdi, 90
		jg nop
		mov rax, 1
		ret

nop:
		mov rax, 0
		ret
