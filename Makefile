NAME	= 	pipex

CC		= 	gcc
CFLAGS	= 	-Wall -Wextra -Werror

SRCS	= 	sources/*.c \
			libft/libft.a

$(NAME):
		make all -C libft
		$(CC) $(CFLAGS) $(SRCS) -o $(NAME)

all: $(NAME)

clean:
		@rm -f $(NAME)
		@make fclean -C libft

fclean: clean

re: fclean all

.PHONY: all, clean, fclean, re
