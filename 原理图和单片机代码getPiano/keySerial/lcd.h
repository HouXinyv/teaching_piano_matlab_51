#ifndef __LCD_H__
#define __LCD_H__
//extern unsigned char yinfusz[7];
//extern unsigned char badusz[4][3];
//extern unsigned char sh[];

void delay3(unsigned int a);
void write_com(unsigned char com); //写指令函数



void write_dat(unsigned char dat); //写数据函数

void init();

void lcd(unsigned char yinfu,unsigned char shao,unsigned char badu);

#endif