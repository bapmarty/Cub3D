NAME		=	cub3d

LIBFT		=	libft

SRC_FOLDER	=	./src/
SRC_FILES	=	cub3d.c

INCLUDE		=	./include/

OBJS		=	$(addprefix $(SRC_FOLDER), $(SRC_FILES))
OBJS		:=	$(OBJS:.c=.o)


# Bash command
ECHO		=	echo
CC			=	gcc
RM			=	rm -rf
MAKE		=	make

# Printing 
C_RESET		=	\033[0m
C_PENDING	=	\033[0;36m
C_SUCCESS	=	\033[0;32m

ES_ERASE	=	"\033[A\033[K\033[A"
ERASE		=	$(ECHO) $(ES_ERASE)

# Compilation
CFLAGS		=	-Wall -Wextra -Werror
FRAMEWORK	=	-framework OpenGL -framework AppKit
LIB_FT		=	-L./libft -lft
#LIB_MAC		=	-I./mlx/ -L./mlx -lmlx $(FRAMEWORK)

.c.o:
	$(CC) $(CFLAGS) -I $(INCLUDE) $(LIB_MAC) -o $@ -c $<

$(NAME): $(OBJS)
	@$(MAKE) -C $(LIBFT)
	$(CC) $(CFLAGS) -I $(INCLUDE) -o $(NAME) $(OBJS) $(LIB_MAC) $(LIB_FT)

all: $(NAME)

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)

norm:
	@$(ECHO) "Nominette on cub3d.c...\t[$(C_PENDING) ⌛︎ $(C_RESET)]"
	@norminette cub3d.c
	@$(ECHO) "Nominette on srcs...\t[$(C_PENDING) ⌛︎ $(C_RESET)]"
	@norminette -d srcs
	@$(ECHO) "Nominette on includes...\t[$(C_PENDING) ⌛︎ $(C_RESET)]"
	@norminette -d includes
	@$(ECHO) "Nominette done...\t[$(C_SUCCESS) ✅ $(C_RESET)]"

up:
	@$(ECHO) "Launching App..."
	@./cub3d

re: fclean all