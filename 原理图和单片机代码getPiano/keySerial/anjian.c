//#include <STC89C5xRC.H>
#include <reg51.h>
#include "anjian.h"
#include "data.h"
#include "uart.h"
sbit PLED = P3^6;//练习灯
sbit NEXT = P3^7;//换曲灯
sbit YS = P2^0;//换音色
sbit PL = P3^5;//教学，练习灯的另一个管脚
sbit PTKEY = P3^2;//练习教学按键
sbit NEXTKEY = P3^3;//下一曲按键
unsigned char keynum;
unsigned char num[]= {0xc0,0xf9,0xa4,0xb0,0x99,0x92,0x82,0xd8,
                      0x80,0x90,0x88,0x83,0xc6,0xa1,0x86,0x8e,0xff
                     };
unsigned char yinSe = 30;
unsigned char yinSeNum = 3;//音色数量
unsigned char practice = 1;//默认练习模式
unsigned char Teach = 0;
unsigned char MusicID = 1;//默认第一首
unsigned char musicNum = 4;//音乐数量
unsigned char nextMusic = 0;//换音乐的标志符	
			 
void delay2(unsigned int a)
{
    while(a--);
}
void keyInit()//初始化  练习/教学
{
	EA = 1;//打开总中断开关
	EX0 = 1;//开外部中断0
	IT0 = 1;//低电平触发
	EX1 = 1;//开外部中断0
	IT1 = 1;//低电平触发
	PLED = 1;PL = 0;//默认练习灯打开
	YS = 0;
	NEXT = 0;
}
unsigned char  read_key(void)
{
    unsigned char key;
    key=keyscan(); //键盘扫描，
    switch(key) {
    case 0x77:
        keynum=1;
        break;
    case 0xb7:
        keynum=2;
        break;
    case 0xd7:
        keynum=3;
        break;
    case 0xe7:
        keynum=4;
        break;
    case 0x7b:
        keynum=5;
        break;
    case 0xbb:
        keynum=6;
        break;
    case 0xdb:
        keynum=7;
        break;
    case 0xeb://换音色
		YS = 1;
        keynum=20;
		if(yinSe==30+yinSeNum)
			yinSe=30;
		UART_SendByte(yinSe++);//30表示默认音色，第一次换音，31；最大音色是音色数量
		delay(100);
		YS = 0;
        break;
    case 0x7d:
        keynum=8;
        break;
    case 0xbd:
        keynum=9;
        break;
    case 0xdd:
        keynum=10;
        break;
    case 0xed:
        keynum=11;
        break;
    case 0x7e:
        keynum=12;
        break;
    case 0xbe:
        keynum=13;
        break;
    case 0xde:
        keynum=14;
        break;
    case 0xee:
        keynum=20;
        break;
    case 0xff:
        keynum=20;
        break;
    }
	key = keynum;
	return key;
}
unsigned char keyscan(void)
{
    unsigned char cord_h,cord_l;//行列值中间变量
    P1=0x0f; //行线输出全为 1，列线输出全为 0
    cord_h=P1&0x0f; //读入行线值
    if(cord_h!=0x0f) //先检测有无按键按下//
		delay(10); //去抖
    cord_h=P1&0x0f; //读入行线值
    //  if(cord_h!=0x0f) {
    P1=0xf0; //列线输出全为 1，行线输出全为 0
    cord_l=P1&0xf0; //读入列线值
    //P1=0x0f;
	while(P1 != 0xf0);//新加
	//while((P1&0x0f)!=0x0f); //等待按键释放注释后串口不能用，不注释教学不能用，妈的
	//delay(10);
    return(cord_h+cord_l); //键盘最后组合码值
    //   }
    //}
    //return(0xff); //返回无键按下的值
}

//两个按键的中断
void  pt() interrupt 0   // 练习/教学
{
	delay2(10);
	if(PTKEY==0)
	{
		practice = !practice;
		Teach = !Teach;		
		PLED = ~PLED;		
		PL = ~PL;
	}
	if(Teach == 1)//
	{//
		UART_SendByte(MusicID+50);//
	}//
	else //
	{//
		UART_SendByte(49);//
	}//
}
void next() interrupt 2  // next换音乐
{
	delay2(10);
	if(NEXTKEY==0)
	{
		if(Teach)
		{
			NEXT = 1;
			MusicID++;
			nextMusic = 1;	
			if(MusicID>musicNum)
			MusicID = 1;	//默认1，原本写的0，傻
			delay(100);
			NEXT = 0;
			UART_SendByte(MusicID+50);//
		}
	}
}

