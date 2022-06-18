module ntoskrnl;
import core.bitop;
 
extern(C) void ntoskrnl(uint magic, uint addr) {
 
	ubyte* vidmem = cast(ubyte*)0xFFFF_8000_000B_8000; //Video memory address
 
	for (int i = 0; i < 80*25*2; i++) { //Loops through the screen and clears it
			volatileStore(vidmem + i, 0);
	}
 
	volatileStore(vidmem, "Welcome to the NT Kernel" & 0xFF); //Prints the letter D
	volatileStore(vidmem + 1, 0x07); //Sets the colour for D to be light grey (0x07)
 
	for (;;) { //Loop forever. You can add your kernel logic here
 
	}
}