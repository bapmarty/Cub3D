/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   cub3d.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bapmarti <bapmarti@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/02/28 23:50:19 by bapmarti          #+#    #+#             */
/*   Updated: 2021/03/16 12:38:49 by bapmarti         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "cub3d.h"


/**
 * cub3d MAIN
 */

int	main(int ac, char **av)
{
	int	fd;
	int	ret;
	char	*file;

	fd = 0;
	if (ac == 2)
	{
		printf("%s\n", av[1]);

		fd = open(av[1], O_RDONLY);
		if (fd == -1)
			return (0);
		if (fd > 0)
		{
			file = malloc(sizeof(char) * 50);
			ret = 1;
			//ret = get_next_line();
			printf("[FD]: %d\n", fd);
		}
		close(fd);
	}
	write(1, "Hello cub3d ! \n", 15);
	return (0);
}
