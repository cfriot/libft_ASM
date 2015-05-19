# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_tolower.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cfriot <cfriot@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/26 18:03:40 by cfriot            #+#    #+#              #
#    Updated: 2015/03/30 17:16:02 by cfriot           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
		global _ft_tolower
		extern _ft_isupper

_ft_tolower:
		call _ft_isupper
		cmp rax, 1
		je yes
		mov rax, rdi
		ret

yes:
		add rdi, 32
		mov rax, rdi
		ret
