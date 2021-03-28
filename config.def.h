/* modify this file to change what commands output to your statusbar, and
 * recompile using the make command */
static const Block blocks[] = {
	/* command                                                             interval signal */
	{"free -h | awk '/^Mem/ { print \"Mem: \"$3\"/\"$2 }' | sed s/i//g",    30,     0},
	{"date '+%b %d (%a) %I:%M%p'",                                          5,      0},
};

/* sets delimeter between status commands. NULL character ('\0') means no
 * delimeter */
static char delim[] = " | ";
