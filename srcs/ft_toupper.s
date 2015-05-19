# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_toupper.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cfriot <cfriot@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/26 17:58:50 by cfriot            #+#    #+#              #
#    Updated: 2015/03/30 17:34:50 by cfriot           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_toupper
	extern _ft_islower

_ft_toupper:
		call _ft_islower
		cmp rax, 0
		je false
		sub rdi, 32
		mov rax, rdi
		jmp end

false:
		mov rax, rdi
		jmp end
end:
	ret
