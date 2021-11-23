# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: moseddik <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/11/21 20:18:19 by moseddik          #+#    #+#              #
#    Updated: 2021/11/21 20:18:27 by moseddik         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = gcc
CFLAGS = -Wall -Wextra -Werror
SRCS = ft_isdigit.c ft_isprint.c ft_itoa.c ft_atoi.c ft_bzero.c ft_calloc.c ft_isalnum.c ft_isalpha.c ft_isascii.c ft_memchr.c ft_memcmp.c ft_memcpy.c ft_memmove.c ft_memset.c ft_putchar_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_putstr_fd.c ft_split.c ft_strchr.c ft_strdup.c ft_striteri.c ft_strjoin.c ft_strlcat.c ft_strlcpy.c ft_strlen.c ft_strmapi.c ft_strncmp.c ft_strnstr.c ft_strrchr.c ft_strtrim.c ft_substr.c ft_tolower.c ft_toupper.c

BONUS =  ft_lstmap.c ft_lstiter.c ft_lstclear.c ft_lstdelone.c ft_lstlast.c ft_lstsize.c ft_lstadd_front.c ft_lstnew.c ft_lstadd_back.c 

OBJS = ${SRCS:.c=.o}

OBJS_BONUS = ${BONUS:.c=.o}

NAME = libft.a
HEADER = libft.h

%.o: %.c
	$(CC) $(CLFAGS) -c $^ -o $@ -I $(HEADER)

${NAME}: ${OBJS}
	ar -rcs $@ $^

all: ${NAME}

bonus: ${OBJS_BONUS}
	ar -rc ${NAME} $^

clean:
	rm -f ${OBJS}
	rm -f ${OBJS_BONUS}

fclean:	clean
	rm -f ${NAME} 

re: fclean all
