#include <xc.h>
#include "main.h"
#include "initcpu.h"
#include "fuse.h"
//#include "adc_trimer.h"

unsigned char channel_select = 0;

void main(void)
{	initcpu();

	while(1)
	{	
		LED1 = 1;
		__delay_ms(100);
		LED1 = 0;
		__delay_ms(100);
		
		
		LED2 = 1;
		__delay_ms(100);
		LED2 = 0;
		__delay_ms(100);
		
		
		LED3 = 1;
		__delay_ms(100);
		LED3 = 0;
		__delay_ms(100);
		
		
		LED4 = 1;
		__delay_ms(100);
		LED4 = 0;
		__delay_ms(100);
		
		LED5 = 1;
		__delay_ms(100);
		LED5 = 0;
		__delay_ms(100);
		
		/*
		// select channel for mesuring //RESET();
		if(MCLR == 1){__delay_ms(350);channel_select++;} 
		if(channel_select > 4){channel_select = 0;}
		
		// call adc channel for mesuring
		if(channel_select == 0)
		{indichan1 = 0; indichan2 = 0; indichan3 = 0;
			adc_read_CH(ADC_CH0);
		}
		
		if(channel_select == 1)
		{indichan1 = 1; indichan2 = 0; indichan3 = 0;
			adc_read_CH(ADC_CH1);
		}
	
		if(channel_select == 2)
		{indichan1 = 0; indichan2 = 1; indichan3 = 0;
			adc_read_CH(ADC_CH2);
		}
	
		if(channel_select == 3)
		{indichan1 = 1; indichan2 = 1; indichan3 = 0;
			adc_read_CH(ADC_CH3);
		}
	
		if(channel_select == 4)
		{indichan1 = 0; indichan2 = 0; indichan3 = 1;
			adc_read_CH(ADC_CH10);
		}
		*/
		
	} //END WHILE
	
	return;
}	//END MAIN


/*
	
		
		//LED1 = 1; __delay_ms(200); LED1 = 0; __delay_ms(200);
		//LED2 = 1; __delay_ms(200); LED2 = 0; __delay_ms(200);
		//LED3 = 1; __delay_ms(200); LED3 = 0; __delay_ms(200);
		//LED4 = 1; __delay_ms(200); LED4 = 0; __delay_ms(200);
		//LED5 = 1; __delay_ms(200); LED5 = 0; __delay_ms(200);
		//LED6 = 1; __delay_ms(200); LED6 = 0; __delay_ms(200);
		//LED7 = 1; __delay_ms(200); LED7 = 0; __delay_ms(200);
		//LED8 = 1; __delay_ms(200); LED8 = 0; __delay_ms(200);
		
		
		//channel_select++;
		//__delay_ms(3500);
		if(channel_select == 0){adc_show_result(CH1);}
		//__delay_ms(3500);
		if(channel_select == 1){adc_show_result(CH2);}
		//__delay_ms(3500);
		if(channel_select == 2){adc_show_result(CH3);}
		//__delay_ms(3500);
		if(channel_select == 3){adc_show_result(CH4);}
		//__delay_ms(3500);
		if(channel_select == 4){adc_show_result(CH5);}
		//__delay_ms(3500);
		if(channel_select == 5){adc_show_result(CH6);}
		//__delay_ms(3500);
		if(channel_select == 6){adc_show_result(CH7);}
		//__delay_ms(3500);
		if(channel_select == 7){adc_show_result(CH8);}
		//__delay_ms(3500);				
       // __delay_ms(2000);
*/