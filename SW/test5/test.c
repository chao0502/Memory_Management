// =============================================================================
//  Program : test.c
//  Author  : Chun-Jen Tsai
//  Date    : Dec/09/2019
// -----------------------------------------------------------------------------
//  Description:
//  This is the minimal time library for aquila.
// -----------------------------------------------------------------------------
//  Revision information:
//
//  None.
// -----------------------------------------------------------------------------
//  License information:
//
//  This software is released under the BSD-3-Clause Licence,
//  see https://opensource.org/licenses/BSD-3-Clause for details.
//  In the following license statements, "software" refers to the
//  "source code" of the complete hardware/software system.
//
//  Copyright 2019,
//                    Embedded Intelligent Systems Lab (EISL)
//                    Deparment of Computer Science
//                    National Chiao Tung Uniersity
//                    Hsinchu, Taiwan.
//
//  All rights reserved.
//
//  Redistribution and use in source and binary forms, with or without
//  modification, are permitted provided that the following conditions are met:
//
//  1. Redistributions of source code must retain the above copyright notice,
//     this list of conditions and the following disclaimer.
//
//  2. Redistributions in binary form must reproduce the above copyright notice,
//     this list of conditions and the following disclaimer in the documentation
//     and/or other materials provided with the distribution.
//
//  3. Neither the name of the copyright holder nor the names of its contributors
//     may be used to endorse or promote products derived from this software
//     without specific prior written permission.
//
//  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
//  AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
//  IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
//  ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
//  LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
//  CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
//  SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
//  INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
//  CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
//  ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
//  POSSIBILITY OF SUCH DAMAGE.
// =============================================================================

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <mallocr2.h>
#include "uart.h"
#include "pythonHelloSeq.h"

//void malloc_test(int nwords);
//void timer_isr_test();
//void sleep(int msec);

//volatile int got_isr;

void malloc_test(int nwords);
int* dmm_test_malloc(int nwords);
void dmm_test_free(int pointer);


int main(void)
{

    printf("Test Print\n");
    
    int *p[100];
    int i,j;

    int clk1 = clock();
	for(i=0;i<5;i++)
	{
		p[i] = (int*)mALLOc(512);
        printf("%d:%x\n",i,p[i]);
	}
	int clk2 = clock();
	printf("Malloc Tick: %d\n",clk2-clk1);

	clk1 = clock();
	for(i=5; i<10; i++){
        p[i] = dmm_test_malloc(0);
        printf("%d:%x\n",i,p[i]); 
    }
	clk2 = clock();
	printf("DMM_Malloc Tick: %d\n",clk2-clk1);

    clk1 = clock();
    for(j=9; j>=5; j--){
        dmm_test_free(p[j]);
        printf("%d",j);
    }
    printf("\n");
    clk2 = clock();
    printf("DMM_Free Tick: %d\n",clk2-clk1);

    clk1 = clock();
	for(i=10; i<16; i++){
        p[i] = dmm_test_malloc(0);
        printf("%d:%x\n",i,p[i]); 
    }
	clk2 = clock();
	printf("DMM_Malloc Tick: %d\n",clk2-clk1);
	
    printf("Test finished.\n");
    return 0;
}
int* dmm_test_malloc(int nwords){
    int a;
    /*if(nwords < 10)
        asm volatile(".byte 0x6b, 0x03, 0x00, 0x06");//malloc t1(x6) 96
    else*/
        asm volatile(".byte 0x6b, 0x03, 0x00, 0x20");//malloc t1(x6) 96
    asm volatile("addi %0, t1 ,0" : "=r"(a));
    return a;
}

void dmm_test_free(int pointer){
    asm volatile("add t2, a0, zero");
    asm volatile(".byte 0x0f, 0x10, 0x00, 0x00");
    asm volatile(".byte 0x6b, 0xa0, 0x03, 0x00");//free
}

void malloc_test(int nwords)
{
    int *buf, idx;

    printf("Memory allocation test of %d words:\n", nwords);
    if ((buf = (int *) malloc(nwords*4)) == NULL)
    {
        printf("Error: Out of memory.\n");
        exit(-1);
    }
    printf("The buffer address is: 0x%X\n", (unsigned) buf);
    for (idx = 0; idx < nwords; idx++) buf[idx] = idx;
    for (idx = 0; idx < 10; idx++)
    {
        printf("Addr 0x%X, buf[%d] = %d\n", (unsigned) &(buf[idx]), idx, buf[idx]);
    }
    printf("\n...\n");
    for (idx = 10; idx > 0; idx--)
    {
        printf("Addr 0x%X, buf[%d] = %d\n",(unsigned) &(buf[nwords-idx]), nwords-idx, buf[nwords-idx]);
    }
    free(buf);
    printf("Buffer freed.\n");
}
