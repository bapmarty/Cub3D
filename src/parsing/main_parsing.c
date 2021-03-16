/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main_parsing.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bapmarti <bapmarti@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/03/16 14:15:46 by bapmarti          #+#    #+#             */
/*   Updated: 2021/03/16 15:02:46 by bapmarti         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "cub3d.h"

int	check_file_extension(char *path, char *ext)
{
	int	len_path;
	int	len_ext;
	int	i;

	len_path = ft_strlen(path);
	len_ext = ft_strlen(ext);
	i = 0;
	while (i < len_ext)
	{
		if (path[len_path - i] != ext[len_ext - i])
			return (0);
		i++;
	}
	return (1);
}