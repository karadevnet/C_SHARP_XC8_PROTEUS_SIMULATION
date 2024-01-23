#include <xc.h>
#include "main.h"
#include "initcpu.h"
#include "fuse.h"

unsigned char channel_select = 0;

void main(void)
{	initcpu();

	while(1)
	{	
		LED1 = 1;
		__delay_ms(500);
		LED1 = 0;
		__delay_ms(500);
		
		
		LED2 = 1;
		__delay_ms(500);
		LED2 = 0;
		__delay_ms(500);
		
		
		LED3 = 1;
		__delay_ms(500);
		LED3 = 0;
		__delay_ms(500);
		
		
		LED4 = 1;
		__delay_ms(500);
		LED4 = 0;
		__delay_ms(500);
		
		LED5 = 1;
		__delay_ms(500);
		LED5 = 0;
		__delay_ms(500);

	} //END WHILE
	
	return;
}	//END MAIN