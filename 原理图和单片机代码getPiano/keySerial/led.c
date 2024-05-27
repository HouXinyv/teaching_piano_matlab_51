//#include <STC89C5xRC.H>
#include <reg51.h>
void led_on(unsigned char num)
{
	if(num<8) num--;	//第一个音  选择0端口
	num = num<<3; 
	
	P2 = P2&0x07|num|0x80;//开灯
	
}
void led_off_teach()
{
	unsigned char num = 0;
	P2 = P2&0x7;//关灯
}