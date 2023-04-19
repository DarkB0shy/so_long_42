# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dcarassi <dcarassi@42.fr>                  +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/02/08 11:08:32 by dcarassi          #+#    #+#              #
#    Updated: 2023/02/17 12:01:42 by dcarassi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS = main.c map.c screen.c sprites.c update.c input.c utilz.c utilz_2.c

OBJS = ${SRCS:.c=.o}

CC = gcc

CLFAGS = -Wall -Wextra -Werror

LINKAR =  -framework OpenGL -framework AppKit

RM = rm -f

NAME = so_long

PRINTF = ft_printf/libftprintf.a

GET_NEXT_LINE = ft_get_next_line/libftget_next_line.a

LIBX = minilibx_opengl_20191021/libmlx.a

INCLUDE = -I include

${NAME}: ${OBJS}
	${CC} ${FLAGS} ${LINKAR} ${INCLUDE} ${OBJS} ${PRINTF} ${GET_NEXT_LINE} ${LIBX} -o ${NAME}

all: ${NAME}

clean:
	${RM} ${OBJS}

fclean:
	${RM} ${NAME}

re: fclean all
