# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strlen.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cfriot <cfriot@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/26 18:26:50 by cfriot            #+#    #+#              #
#    Updated: 2015/03/30 15:04:17 by cfriot           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
		global _ft_strlen

_ft_strlen:
		cmp rdi, 0
		je end
		mov rsi, rdi
		mov rax, 0
		mov rcx, -1
		cld
		repnz scasb
		mov rax, -2
		sub rax, rcx
		ret

end:
		mov rax, 0
		ret
