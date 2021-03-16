/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   cub3d.h                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bapmarti <bapmarti@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/02/28 23:51:28 by bapmarti          #+#    #+#             */
/*   Updated: 2021/03/16 13:09:54 by bapmarti         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef CUB3D_H
# define CUB3D_H

# include <math.h>
# include <unistd.h>
# include <stdlib.h>
# include <fcntl.h>

# include <stdio.h>
# include "libft.h"
# include "get_next_line.h"

typedef struct	s_window {
	int		width;
	int		height;
}	t_window;

typedef struct	s_floor {
	int		red;
	int		green;
	int		blue;
}	t_floor;

typedef struct	s_ceiling {
	int		red;
	int		green;
	int		blue;
}	t_ceiling;

typedef struct	s_textures {
	char	*north_textures;
	char	*south_textures;
	char	*west_textures;
	char	*east_textures;
}	t_textures;

typedef struct	s_sprite {
	char	*sprite_textures;
}	t_sprite;

typedef struct	s_map {
	char	**map;
}	t_map;


#endif