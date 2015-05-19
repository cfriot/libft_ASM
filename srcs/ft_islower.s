# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_islower.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cfriot <cfriot@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/30 17:10:03 by cfriot            #+#    #+#              #
#    Updated: 2015/03/30 17:31:03 by cfriot           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_islower


_ft_islower:
	mov rax, 0
	cmp rdi, 97
	jl end
	cmp rdi, 122
	jg end
	mov rax, 1

end:
	ret
