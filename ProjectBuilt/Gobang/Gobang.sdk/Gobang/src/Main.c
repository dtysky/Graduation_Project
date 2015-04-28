/*
 * Main.c
 *
 *  Created on: 2015Äê4ÔÂ14ÈÕ
 *      Author: sky
 */

#include "xgpio.h"
#include "xparameters.h"
#include "BoardInit_AXI.h"

#define sel_view0 0b0000
#define sel_view1 0b0100
#define sel_view2 0b1000
#define sel_view3 0b1100
#define sel_act0 0b0000
#define sel_act1 0b0010
#define sel_bw0 0b0000
#define sel_bw1 0b0001

BOARDINIT bdit;

int main(){

	BOARDINIT_Init(&bdit, XPAR_BOARDINIT_AXI_0_S00_AXI_BASEADDR);
	BOARDINIT_SetWithCheck(bdit.RstN, 0);
	BOARDINIT_SetWithCheck(bdit.Erosion0, 0b010111010);
	//BOARDINIT_SetWithCheck(bdit.Dilation0, 0b1111111111111111111111111);
	//BOARDINIT_SetWithCheck(bdit.Erosion1, 0b0000001110011100111000000);
	BOARDINIT_SetWithCheck(bdit.Dilation0, 0b1111111111111111111111111);
	BOARDINIT_SetWithCheck(bdit.Erosion1, 0b0000001110011100111000000);
	BOARDINIT_SetWithCheck(bdit.Erosion2, 0b000010010);
	BOARDINIT_SetWithCheck(bdit.Erosion3, 0b000010001);
	BOARDINIT_SetWithCheck(bdit.Erosion4, 0b000010100);
	BOARDINIT_SetWithCheck(bdit.Erosion5, 0b000011000);
	BOARDINIT_SetWithCheck(bdit.Match0, 0b000010000);
	BOARDINIT_SetWithCheck(bdit.HarrisTh, 2);
	BOARDINIT_SetWithCheck(bdit.Top, 8);
	BOARDINIT_SetWithCheck(bdit.Bottom, 225);
	BOARDINIT_SetWithCheck(bdit.Left, 65);
	BOARDINIT_SetWithCheck(bdit.Right, 293);
//	BOARDINIT_SetWithCheck(bdit.Top, 0);
//	BOARDINIT_SetWithCheck(bdit.Bottom, 240);
//	BOARDINIT_SetWithCheck(bdit.Left, 0);
//	BOARDINIT_SetWithCheck(bdit.Right, 320);
//	BOARDINIT_SetWithCheck(bdit.BlackTh, 130);
	//BOARDINIT_SetWithCheck(bdit.BlackTh, 70);
	BOARDINIT_SetWithCheck(bdit.Sels, sel_view2 + sel_act0 + sel_bw0);
	BOARDINIT_SetWithCheck(bdit.WhiteTh, 200);
	BOARDINIT_SetWithCheck(bdit.RstN, 1);

	return 0;
}
