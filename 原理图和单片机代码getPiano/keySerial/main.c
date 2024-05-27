#include <reg51.h>
#include "anjian.h"
#include "data.h"
//#include <STC89C5xRC.H>
#include "lcd.h"
#include "uart.h"
#include "led.h"
#include "teach.h"
//数据定义：
//音符码格式: | D7 | D6 | D5 D4 | D3 | D2 D1 D0 |
// |升降 |空闲 | 八度 |空闲 | 音符 |
//音符长度： | D7 D6 | D5 | D4 | D3 | D2 | D1 | D0 |
// |空闲 |空闲 | 全 |二分 |四分|八分|16 分|32 分|

//函数定义:

void main(void)
{
	UART_Init();
	keyInit();
//	PLED = 1;//默认练习灯打开	

	//led_on(4);
	while(1)
	{
		//UART_SendByte(3);
		while(practice)
		{
			read_key();
			if(keynum!=20)
			UART_SendByte(keynum);
		}
		while(Teach)
		{			
			teach(MusicID);	//教这首音乐，教完函数跳出		
		}
	}  
}
