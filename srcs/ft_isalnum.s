# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isalnum.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cfriot <cfriot@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/30 20:30:56 by cfriot            #+#    #+#              #
#    Updated: 2015/03/30 20:42:14 by cfriot           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_isalnum
	extern _ft_isdigit
	extern _ft_isalpha

_ft_isalnum:
	call _ft_isalpha
	cmp rax, 1
	je end
	call _ft_isdigit

end:
	ret
