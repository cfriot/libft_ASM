# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isascii.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cfriot <cfriot@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/30 20:42:22 by cfriot            #+#    #+#              #
#    Updated: 2015/03/30 20:57:33 by cfriot           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
		global _ft_isascii

_ft_isascii:
		mov rax, 0
		cmp rdi, 0
		jl end
		cmp rdi, 127
		jg end
		mov rax, 1

end:
		ret
