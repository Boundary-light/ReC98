// Copy of the palette used during the logo, to allow non-blocking fades in
// contrast to master.lib's blocking palette_black_in() and palette_black_out()
// functions. (Then again, master.lib has the PaletteTone global for that...)
extern Palette8 zunsoft_palette;

// Spawns [n] new explosions at the given screen-coordinate [origin] position.
void pascal zunsoft_pyro_new(Point screen_origin, int n, char patnum_base);

void pascal zunsoft_update_and_render(void);
void pascal zunsoft_palette_update_and_show(int tone);

void pascal zunsoft(void);
