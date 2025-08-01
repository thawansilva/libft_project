NAME = libft.a
SRCS = ft_isalpha.c ft_isalnum.c ft_isdigit.c ft_memset.c\
	   ft_strlcpy.c ft_toupper.c ft_bzero.c ft_atoi.c ft_isascii.c\
	   ft_isprint.c ft_strlen.c ft_tolower.c ft_memcpy.c ft_memmove.c\
	   ft_strchr.c ft_strnstr.c ft_strrchr.c ft_strncmp.c ft_strlcat.c\
	   ft_substr.c ft_strjoin.c ft_strdup.c ft_calloc.c ft_memchr.c\
	   ft_memcmp.c ft_itoa.c ft_strmapi.c ft_striteri.c ft_putchar_fd.c\
	   ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_strtrim.c\
	   ft_split.c ft_swap_int.c ft_swap_char.c ft_swap_string.c ft_isspace.c
SRCBONUS = ft_lstnew_bonus.c ft_lstadd_front_bonus.c ft_lstsize_bonus.c ft_lstlast_bonus.c\
		   ft_lstadd_back_bonus.c ft_lstdelone_bonus.c ft_lstclear_bonus.c ft_lstiter_bonus.c\
		   ft_lstmap_bonus.c
OBJS = $(SRCS:.c=.o)
BONUSOBJS = $(SRCBONUS:.c=.o)

CFLAGS = -g -Wall -Wextra -Werror
RM = rm -f

all: $(NAME)

$(NAME): $(OBJS)
	ar rcs $(NAME) $^

bonus:
	@$(MAKE) OBJS="$(OBJS) $(BONUSOBJS)"

%.o : %.c
	cc $(CFLAGS) -I . -c $^ -o $@

clean:
	$(RM) $(OBJS) $(BONUSOBJS)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all bonus fclean clean re 
