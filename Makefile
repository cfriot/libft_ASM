# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cfriot <cfriot@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/27 14:29:47 by cfriot            #+#    #+#              #
#    Updated: 2015/03/31 16:07:56 by cfriot           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libfts.a

SRC =		ft_bzero.s \
			ft_isalpha.s \
			ft_isdigit.s \
			ft_islower.s \
			ft_isascii.s \
			ft_isalnum.s \
			ft_isprint.s \
			ft_isupper.s \
			ft_memcpy.s \
			ft_memset.s \
			ft_puts.s  \
			ft_puts_fd.s \
			ft_putchar_fd.s \
			ft_strcat.s \
			ft_strdup.s \
			ft_strlen.s \
			ft_tolower.s \
			ft_cat.s \
			ft_putstr.s \
			ft_putchar.s \
			ft_toupper.s

SRCS = $(addprefix srcs/, $(SRC))

OBJ = $(SRCS:.s=.o)

all: $(NAME)

$(NAME) :	$(OBJ)
			ar rc $(NAME) $(OBJ)
			ranlib $(NAME)

%.o: %.s
	~/.brew/Cellar/nasm/2.11.08/bin/nasm -f macho64 $^

clean:
	rm -rf $(OBJ)

fclean: clean
	rm -rf $(NAME)

re: fclean all

.PHONY: all clean fclean re
