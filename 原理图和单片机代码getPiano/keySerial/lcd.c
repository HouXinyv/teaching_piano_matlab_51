//#include <STC89C5xRC.H>
#include <reg51.h>
#include "lcd.h"
#include "data.h"
unsigned char yinfusz[7]="1234567";
unsigned char badusz[4][3]= {"du1","du2","du3","du4"};
unsigned char sh[]="# ";
sbit RS=P2^0;
sbit RW=P2^1;
sbit EN=P2^2;
void delay3(unsigned int a)
{
    while(a--);
}
void write_com(unsigned char com) //写指令函数
{
    P0 = com; //指令代码送入端口
    RS = 0; //模拟写指令时序
    RW = 0;
    EN = 1;
    delay(20);
    EN = 0;
}


void write_dat(unsigned char dat) //写数据函数
{
    P0 = dat; //数据存入端口
    RS=1; //模拟写数据时序
    RW=0;
    EN=1;
    delay(200);
    EN=0;
}
void init()
{
    write_com(0x01); //清屏
    write_com(0x38); //设置显示为 16*2 行，5*7 点阵
    write_com(0x0f); //开显示，显示光标且闪烁
    write_com(0x06); //写入数据时光标右移 1 位
}
void lcd(unsigned char yinfu,unsigned char shao,unsigned char badu)
{
    unsigned char i;
    //unsigned char datastr[3];
    init();
    write_com(0x80); //起点为第一行第一个字符
    write_dat(yinfusz[yinfu-1]);
    write_dat(sh[shao]);
    write_com(0xc0);

    for(i=0; i<3; i++) {
        if(badusz[badu][i]=='\0') break;
        write_dat(badusz[badu][i]);
        //delay(20000);
    }
    

    write_com(0x0c); //关光标
		//delay(2);

}