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
#include "uart.h"

void malloc_test(int nwords);
int* dmm_test_malloc(int nwords);
void dmm_test_free(int pointer);

int main(void)
{
    
    int *p[15];
    int i,j;
    //printf("\nFirst time tick = %d\n", clock());
    for(i=0; i<5; i++){
        p[i] = dmm_test_malloc(0);
        printf("%d:%x\n",i,p[i]);
        
    }
    //printf("Second time tick = %d\n", clock());
    /*for(i=0; i<5; i++){
        p[i] = (int*)malloc(4);
        printf("%d:%d\n",i,p[i]);
    }*/
    //printf("Third time tick = %d\n", clock());*/
    for(int j=0; j<5; j++){
        printf("%d\n",j);
        dmm_test_free(p[j]);
    }
    for(i=5; i<11; i++){
        p[i] = dmm_test_malloc(0);
        printf("%d:%x\n",i,p[i]);
        
    }
    /*for(j=5; j<10; j++){
        printf("%d\n",j);
        dmm_test_free(p[j]);
    }*/
    
    printf("\nFirst time tick = %d\n", clock());
    //malloc_test(10);
    printf("Second time tick = %d\n", clock());

    printf("Test finished.\n");
    return 0;
}

int* dmm_test_malloc(int nwords){
    int a;
    /*if(nwords < 10)
        asm volatile(".byte 0x6b, 0x03, 0x00, 0x06");//malloc t1(x6) 96
    else*/
        asm volatile(".byte 0x6b, 0x03, 0x00, 0x60");//malloc t1(x6) 96
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

/*int *p1, *p2, *p3, *p4, *p5, *p6, *p7, *p8, *p9, *p10;
    for(int i=0;i<10;i++){
    p1 = dmm_test_malloc(0); 
    p2 = dmm_test_malloc(0); 
    p3 = dmm_test_malloc(0); 
    p4 = dmm_test_malloc(0); 
    p5 = dmm_test_malloc(0);
    printf("p1:%d\n",p1);
    printf("p2:%d\n",p2);
    printf("p3:%d\n",p3);
    printf("p4:%d\n",p4);
    printf("p5:%d\n",p5); 
    int tem;
    asm volatile("add t2, %1, zero" : "=r"(tem) : "r"(p1));
    asm volatile(".byte 0x6b, 0xa0, 0x03, 0x00");//free
    asm volatile("add t2, %1, zero" : "=r"(tem) : "r"(p2));
    asm volatile(".byte 0x6b, 0xa0, 0x03, 0x00");//free
    asm volatile("add t2, %1, zero" : "=r"(tem) : "r"(p3));
    asm volatile(".byte 0x6b, 0xa0, 0x03, 0x00");//free
    asm volatile("add t2, %1, zero" : "=r"(tem) : "r"(p4));
    asm volatile(".byte 0x6b, 0xa0, 0x03, 0x00");//free
    asm volatile("add t2, %1, zero" : "=r"(tem) : "r"(p5));
    asm volatile(".byte 0x6b, 0xa0, 0x03, 0x00");//free
    p6 = dmm_test_malloc(0); 
    p7 = dmm_test_malloc(0); 
    p8 = dmm_test_malloc(0); 
    p9 = dmm_test_malloc(0); 
    p10 = dmm_test_malloc(0); 
    printf("p6:%d\n",p6);
    printf("p7:%d\n",p7);
    printf("p8:%d\n",p8);
    printf("p9:%d\n",p9);
    printf("p10:%d\n",p10);
    asm volatile("add t2, %1, zero" : "=r"(tem) : "r"(p6));
    asm volatile(".byte 0x6b, 0xa0, 0x03, 0x00");//free
    asm volatile("add t2, %1, zero" : "=r"(tem) : "r"(p7));
    asm volatile(".byte 0x6b, 0xa0, 0x03, 0x00");//free
    asm volatile("add t2, %1, zero" : "=r"(tem) : "r"(p8));
    asm volatile(".byte 0x6b, 0xa0, 0x03, 0x00");//free
    asm volatile("add t2, %1, zero" : "=r"(tem) : "r"(p9));
    asm volatile(".byte 0x6b, 0xa0, 0x03, 0x00");//free
    asm volatile("add t2, %1, zero" : "=r"(tem) : "r"(p10));
    asm volatile(".byte 0x6b, 0xa0, 0x03, 0x00");//free
    }*/