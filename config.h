/* modify this file to change what commands output to your statusbar, and
 * recompile using the make command */
static const Block blocks[] = {
	/* command                interval    signal */
	{ "dwmb-disk",            30,         0 },
	{ "dwmb-backups",         3600,       5 },
	{ "dwmb-updates",         3600,       4 },
	{ "dwmb-backlight",       0,          2 },
	{ "dwmb-volume",          0,          1 },
	{ "dwmb-torrents",        30,         3 },
	{ "dwmb-battery2",        30,         0 },
	{ "dwmb-date",            1,          0 },
};

/* sets delimeter between status commands. NULL character ('\0') means no
 * delimeter */
static char delim[] = " | ";
