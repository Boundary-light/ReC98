#define PELLET_W 8
#define PELLET_H 8
#if (GAME == 2)
	static const int PELLET_CELS = 1;
#else
	static const int PELLET_CELS = 3;
#endif

extern const dots16_t sPELLET[PELLET_CELS][PRESHIFT][PELLET_H];
