if GAME eq 5
	SA_HIT = (-999 shl 4)
endif

shot_alive_t struct
	SA_pos	Point <?>
	SA_shot	dw ?
shot_alive_t ends

public _shots_alive, _shots_alive_count
_shots_alive	shot_alive_t SHOT_COUNT dup(<?>)
_shots_alive_count	dw ?
