/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strmapi.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: thaperei <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/07/19 16:25:26 by thaperei          #+#    #+#             */
/*   Updated: 2025/07/19 16:25:26 by thaperei         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "./libft.h"

char	*ft_strmapi(char const *s, char (*f)(unsigned int, char))
{
	size_t		size;
	char		*str;

	if (!s || !f)
		return (NULL);
	size = ft_strlen(s);
	str = (char *) malloc(size + 1);
	if (!str)
		return (NULL);
	str[size] = '\0';
	while (size--)
		str[size] = f(size, s[size]);
	if (size == 0)
		str[size] = f(size, s[size]);
	return (str);
}
