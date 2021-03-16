NAME		=	cub3d

LIBFT		=	libft

SRC_FOLDER	=	./src/
SRC_FILES	=	cub3d.c

INCLUDE		=	-I./includes/

SRC			=	$(addprefix $(SRC_FOLDER), $(SRC_FILES))
OBJ			=	$(SRC:.c=.o)


# Bash command
ECHO		=	echo
CC			=	gcc
RM			=	rm -rf

# Printing 
C_RESET		=	\033[0m
C_PENDING	=	\033[0;36m
C_SUCCESS	=	\033[0;32m

ES_ERASE	=	"\033[A\033[K\033[A"
ERASE		=	$(ECHO) $(ES_ERASE)

# Compilation
CFLAGS		=	-Wall -Wextra -Werror
LIB_FT		=	-L./libft -lft
#LIB_LINUX	=	-I/usr/local/include -L/usr/local/lib -lmlx -L/usr/include -lm -lbsd -lX11 -lXext
#LIB_MAC		=	-I/usr/local/include -L/usr/local/lib -lmlx -framework OpenGL -framework AppKit
#LIB			=	$(LIB_MAC)

.c.o:
	$(CC) $(CFLAGS) -I./includes/ -o $@ -c $<

$(NAME): $(OBJ)
	@make -C $(LIBFT)
	$(CC) $(CFLAGS) -I./includes/ -o $(NAME) $(OBJ) $(LIB_FT)

all: $(NAME)

clean:
	@make $@ -C $(LIBFT)
	$(RM) $(OBJS)

fclean: clean
	@make $@ -C $(LIBFT)
	$(RM) $(NAME)

norm:
	@$(ECHO) "Nominette on cub3d.c...\t[$(C_PENDING) ⌛︎ $(C_RESET)]"
	@norminette cub3d.c
	@$(ECHO) "Nominette on srcs...\t[$(C_PENDING) ⌛︎ $(C_RESET)]"
	@norminette -d srcs
	@$(ECHO) "Nominette on includes...\t[$(C_PENDING) ⌛︎ $(C_RESET)]"
	@norminette -d includes
	@$(ECHO) "Nominette done...\t[$(C_SUCCESS) ✅ $(C_RESET)]"

re: fclean all