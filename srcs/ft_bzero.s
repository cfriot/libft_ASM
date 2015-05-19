# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    bzero.s                                            :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cfriot <cfriot@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/26 13:35:55 by cfriot            #+#    #+#              #
#    Updated: 2015/03/30 15:36:25 by cfriot           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global _ft_bzero

section .text

_ft_bzero:
		mov r9, 0

bzero_loops:
		cmp rsi, 0
		jle end
		mov [rdi + r9], byte 0x00
		inc r9
		dec rsi
		jmp bzero_loops

end:
		ret
