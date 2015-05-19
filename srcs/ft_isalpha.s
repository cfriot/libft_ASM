# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isalpha.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cfriot <cfriot@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/26 17:36:16 by cfriot            #+#    #+#              #
#    Updated: 2015/03/26 17:54:03 by cfriot           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_isalpha

_ft_isalpha:

test:
		cmp rdi, 65
		jl nop
		cmp rdi, 90
		jle yes
		cmp rdi, 97
		jl nop
		cmp rdi, 122
		jle yes

nop:
		mov rax, 0
		ret

yes:
		mov rax, 1
		ret

