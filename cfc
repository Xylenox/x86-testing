; open input    mov r6, 0x@     mov r2, 0x��    REX.W           add r4, 0x     REX.W           mov r7, [r4]    REX.W           sub r4, 0x     mov r0, 0x     syscall         REX.WR          mov r0, r0                      ; open output   mov r0, 0x     mov r2, 0x��    mov r6, 0xB    REX.W           add r4, 0x     REX.W           mov r7, [r4]    REX.W           sub r4, 0x     syscall         REX.WR          mov r1, r0                      ; write header  REX.WB          mov r7, r1      mov r6, 0x  @   mov r2, 0xx     mov r0, 0x     syscall                         ; get input sizeREX.W           sub r4, 0x�     REX.WB          mov r7, r0      REX.W           mov r6, r4      mov r0, 0x     syscall         REX.W           add r4, 0x0     REX.WR          mov r2, [r4]    REX.W           sub r4, 0x0                     ; read input    REX.WB          sub r4, r2      REX.WB          mov r7, r0      REX.W           mov r6, r4      REX.WB          mov r2, r2      mov r0, 0x      syscall                         ; main loop     mov r0, 0x      movb r0, [r4]   sub r0, 0x      jne 0x/                         ; end of file   REX.W           add r4, 0x     REX.WB          sub r2, 0x     REX.WB          mov r7, r1      REX.W           mov r6, r4      REX.WB          mov r2, r2      mov r0, 0x     syscall         mov r0, 0x<     mov r7, 0x      syscall                         jmp 0x�                                         ; subrr         mov r0, [r4]    sub r0, 0xsub   je 0x          jne 0x                         REX.W           mov r0, r4      REX.W           add r0, 0x     sub r1, r1      movb r1, [r0]   sub r1, 0xr     je 0x          jne 0x                         REX.W           add r0, 0x     sub r1, r1      movb r1, [r0]   sub r1, 0x,     je 0x          jne 0x                         jmp 0x�                         REX.W           add r0, 0x     sub r1, r1      movb r1, [r0]   sub r1, 0x      je 0x          jne 0x                         REX.W           add r0, 0x     sub r1, r1      movb r1, [r0]   sub r1, 0xr     je 0x          jne 0xw                         jmp 0x�                         REX.W           add r4, 0x     movb r0, [r4]   sub r0, 0x0     add r0, r0      add r0, r0      add r0, r0      REX.W           add r4, 0x     add r0, [r4]    sub r0, 0x0     add r0, 0x�     REX.W           sub r4, 0x
     mov r1, 0x+     mov [r4], r1    REX.W           add r4, 0x     mov [r4], r0    REX.W           sub r4, 0x                     jmp 0x         jmp 0x�                         REX.WB          mov r7, r1      REX.W           mov r6, r4      mov r2, 0x     mov r0, 0x     syscall                         REX.W           add r4, 0x     REX.WB          sub r2, 0x
     jmp 0x�                                         ; addri         mov r0, [r4]    sub r0, 0xadd   je 0x          jne 0x                         REX.W           mov r0, r4      REX.W           add r0, 0x     sub r1, r1      movb r1, [r0]   sub r1, 0xr     je 0x          jne 0x                         REX.W           add r0, 0x     mov r1, [r0]    sub r1, 0x, 0x  je 0x          jne 0xj         jmp 0x�                         mov r1, 0x�     mov [r4], r1    REX.W           add r4, 0x     mov r0, [r4]    sub r0, 0x0     add r0, 0x�     REX.W           add r4, 0x     mov r1, [r4]    REX.W           sub r4, 0x	     mov [r4], r0    REX.W           add r4, 0x     mov [r4], r1    REX.W           sub r4, 0x                     REX.WB          mov r7, r1      REX.W           mov r6, r4      mov r2, 0x     mov r0, 0x     syscall                         REX.W           add r4, 0x     REX.WB          sub r2, 0x     jmp 0x�                                         ; space         sub r0, r0      movb r0, [r4]   sub r0, 0x      je 0x          jne 0x                         REX.W           add r4, 0x     REX.WB          sub r2, 0x     jmp 0x�                         ; REX           mov r0, [r4]    sub r0, 0xREX.  je 0x          jne 0xX                         REX.W           add r4, 0x     REX.WB          sub r2, 0x     mov r0, 0x@                     sub r1, r1      movb r1, [r4]   sub r1, 0xW     jne 0x         add r0, 0x     REX.W           add r4, 0x     REX.WB          sub r2, 0x                     sub r1, r1      movb r1, [r4]   sub r1, 0xR     jne 0x         add r0, 0x     REX.W           add r4, 0x     REX.WB          sub r2, 0x                     jmp 0x         jmp 0xk         jmp 0x�                         sub r1, r1      movb r1, [r4]   sub r1, 0xX     jne 0x         add r0, 0x     REX.W           add r4, 0x     REX.WB          sub r2, 0x                                     sub r1, r1      movb r1, [r4]   sub r1, 0xB     jne 0x         add r0, 0x     REX.W           add r4, 0x     REX.WB          sub r2, 0x                     REX.W           sub r4, 0x     mov [r4], r0                    REX.WB          mov r7, r1      REX.W           mov r6, r4      mov r2, 0x     mov r0, 0x     syscall                         REX.W           add r4, 0x     jmp 0x�                                         ; addrm         mov r0, [r4]    sub r0, 0xadd   je 0x          jne 0x                         REX.W           mov r0, r4      REX.W           add r0, 0x     sub r1, r1      movb r1, [r0]   sub r1, 0xr     je 0x          jne 0x                         REX.W           add r0, 0x     mov r1, [r0]    sub r1, 0x, [r  je 0x          jne 0x4                         REX.W           add r4, 0x     movb r0, [r4]   sub r0, 0x0     add r0, r0      add r0, r0      add r0, r0      REX.W           add r4, 0x     sub r1, r1      movb r1, [r4]   add r0, [r4]    sub r0, 0x0     REX.W           sub r4, 0x
                     jmp 0x         jmp 0xe         jmp 0x�                         mov r2, 0x     mov [r4], r2    REX.W           add r4, 0x     mov [r4], r0    REX.W           sub r4, 0x     mov r2, 0x                     ; source is r4  sub r1, 0x4     jne 0x         REX.W           add r4, 0x     mov r0, 0x$     mov [r4], r0    REX.W           sub r4, 0x     mov r2, 0x                     REX.WB          mov r7, r1      REX.W           mov r6, r4      mov r0, 0x     syscall                         REX.W           add r4, 0x     REX.WB          sub r2, 0x     jmp 0x�                                         ; syscall       mov r0, [r4]    sub r0, 0xsysc  je 0x          jne 0x                         REX.W           mov r0, r4      REX.W           add r0, 0x     mov r1, [r0]    sub r1, 0xcall  je 0x          jne 0x-                         mov r0, 0x    mov [r4], r0                    REX.WB          mov r7, r1      REX.W           mov r6, r4      mov r2, 0x     mov r0, 0x     syscall                         REX.W           add r4, 0x     REX.WB          sub r2, 0x     jmp 0x�                                         ; movrm         mov r0, [r4]    sub r0, 0xmov   je 0x          jne 0x                         REX.W           mov r0, r4      REX.W           add r0, 0x     sub r1, r1      movb r1, [r0]   sub r1, 0xr     je 0x          jne 0x                         REX.W           add r0, 0x     mov r1, [r0]    sub r1, 0x, [r  je 0x          jne 0x4                         REX.W           add r4, 0x     movb r0, [r4]   sub r0, 0x0     add r0, r0      add r0, r0      add r0, r0      REX.W           add r4, 0x     sub r1, r1      movb r1, [r4]   add r0, [r4]    sub r0, 0x0     REX.W           sub r4, 0x
                     jmp 0x         jmp 0xe         jmp 0x�                         mov r2, 0x�     mov [r4], r2    REX.W           add r4, 0x     mov [r4], r0    REX.W           sub r4, 0x     mov r2, 0x                     ; source is r4  sub r1, 0x4     jne 0x         REX.W           add r4, 0x     mov r0, 0x$     mov [r4], r0    REX.W           sub r4, 0x     mov r2, 0x                     REX.WB          mov r7, r1      REX.W           mov r6, r4      mov r0, 0x     syscall                         REX.W           add r4, 0x     REX.WB          sub r2, 0x     jmp 0x�                                         ; movri         mov r0, [r4]    sub r0, 0xmov   je 0x          jne 0x                         REX.W           mov r0, r4      REX.W           add r0, 0x     sub r1, r1      movb r1, [r0]   sub r1, 0xr     je 0x          jne 0x                         REX.W           add r0, 0x     mov r1, [r0]    sub r1, 0x, 0x  je 0x          jne 0xj         jmp 0x�                         mov r1, 0x�     mov [r4], r1    REX.W           add r4, 0x     mov r0, [r4]    sub r0, 0x0     add r0, 0x�     REX.W           add r4, 0x     mov r1, [r4]    REX.W           sub r4, 0x	     mov [r4], r0    REX.W           add r4, 0x     mov [r4], r1    REX.W           sub r4, 0x                     REX.WB          mov r7, r1      REX.W           mov r6, r4      mov r2, 0x     mov r0, 0x     syscall                         REX.W           add r4, 0x     REX.WB          sub r2, 0x     jmp 0x�                                         ; movrr         mov r0, [r4]    sub r0, 0xmov   je 0x          jne 0x                         REX.W           mov r0, r4      REX.W           add r0, 0x     sub r1, r1      movb r1, [r0]   sub r1, 0xr     je 0x          jne 0x                         REX.W           add r0, 0x     sub r1, r1      movb r1, [r0]   sub r1, 0x,     je 0x          jne 0x                         jmp 0x�                         REX.W           add r0, 0x     sub r1, r1      movb r1, [r0]   sub r1, 0x      je 0x          jne 0x                         REX.W           add r0, 0x     sub r1, r1      movb r1, [r0]   sub r1, 0xr     je 0x          jne 0xw                         jmp 0x�                         REX.W           add r4, 0x     movb r0, [r4]   sub r0, 0x0     add r0, r0      add r0, r0      add r0, r0      REX.W           add r4, 0x     add r0, [r4]    sub r0, 0x0     add r0, 0x�     REX.W           sub r4, 0x
     mov r1, 0x�     mov [r4], r1    REX.W           add r4, 0x     mov [r4], r0    REX.W           sub r4, 0x                     jmp 0x         jmp 0x�                         REX.WB          mov r7, r1      REX.W           mov r6, r4      mov r2, 0x     mov r0, 0x     syscall                         REX.W           add r4, 0x     REX.WB          sub r2, 0x
     jmp 0x�                                         ; subri         mov r0, [r4]    sub r0, 0xsub   je 0x          jne 0x                         REX.W           mov r0, r4      REX.W           add r0, 0x     sub r1, r1      movb r1, [r0]   sub r1, 0xr     je 0x          jne 0x                         REX.W           add r0, 0x     mov r1, [r0]    sub r1, 0x, 0x  je 0x          jne 0xj         jmp 0x�                         mov r1, 0x�     mov [r4], r1    REX.W           add r4, 0x     mov r0, [r4]    sub r0, 0x0     add r0, 0x�     REX.W           add r4, 0x     mov r1, [r4]    REX.W           sub r4, 0x	     mov [r4], r0    REX.W           add r4, 0x     mov [r4], r1    REX.W           sub r4, 0x                     REX.WB          mov r7, r1      REX.W           mov r6, r4      mov r2, 0x     mov r0, 0x     syscall                         REX.W           add r4, 0x     REX.WB          sub r2, 0x     jmp 0x�                                         ; comments      sub r0, r0      movb r0, [r4]   sub r0, 0x;     je 0x          jne 0x                         REX.W           add r4, 0x     REX.WB          sub r2, 0x     jmp 0x�                                         ; movbrm        mov r0, [r4]    sub r0, 0xmovb  je 0x          jne 0x                         REX.W           mov r0, r4      REX.W           add r0, 0x     sub r1, r1      movb r1, [r0]   sub r1, 0xr     je 0x          jne 0x                         REX.W           add r0, 0x     mov r1, [r0]    sub r1, 0x, [r  je 0x          jne 0x4                         REX.W           add r4, 0x     movb r0, [r4]   sub r0, 0x0     add r0, r0      add r0, r0      add r0, r0      REX.W           add r4, 0x     sub r1, r1      movb r1, [r4]   add r0, [r4]    sub r0, 0x0     REX.W           sub r4, 0x
                     jmp 0x         jmp 0xe         jmp 0x�                         mov r2, 0x�     mov [r4], r2    REX.W           add r4, 0x     mov [r4], r0    REX.W           sub r4, 0x     mov r2, 0x                     ; source is r4  sub r1, 0x4     jne 0x         REX.W           add r4, 0x     mov r0, 0x$     mov [r4], r0    REX.W           sub r4, 0x     mov r2, 0x                     REX.WB          mov r7, r1      REX.W           mov r6, r4      mov r0, 0x     syscall                         REX.W           add r4, 0x     REX.WB          sub r2, 0x     jmp 0x�                                         ; jne           mov r0, [r4]    sub r0, 0xjne   je 0x          jne 0xO                         REX.W           add r4, 0x     mov r1, [r4]    REX.W           sub r4, 0x     mov r0, 0xu     mov [r4], r0    REX.W           add r4, 0x     mov [r4], r1    REX.W           sub r4, 0x                     REX.WB          mov r7, r1      REX.W           mov r6, r4      mov r2, 0x     mov r0, 0x     syscall                         REX.W           add r4, 0x     REX.WB          sub r2, 0x     jmp 0x�                         ; jmp           mov r0, [r4]    sub r0, 0xjmp   je 0x          jne 0xO                         REX.W           add r4, 0x     mov r1, [r4]    REX.W           sub r4, 0x     mov r0, 0x�     mov [r4], r0    REX.W           add r4, 0x     mov [r4], r1    REX.W           sub r4, 0x                     REX.WB          mov r7, r1      REX.W           mov r6, r4      mov r2, 0x     mov r0, 0x     syscall                         REX.W           add r4, 0x     REX.WB          sub r2, 0x     jmp 0x�                                         ; je            mov r0, [r4]    sub r0, 0xje 0  je 0x          jne 0xO                         REX.W           add r4, 0x     mov r1, [r4]    REX.W           sub r4, 0x     mov r0, 0xt     mov [r4], r0    REX.W           add r4, 0x     mov [r4], r1    REX.W           sub r4, 0x                     REX.WB          mov r7, r1      REX.W           mov r6, r4      mov r2, 0x     mov r0, 0x     syscall                         REX.W           add r4, 0x     REX.WB          sub r2, 0x     jmp 0x�                          �<$add tu�|$rtu	f�|$, tu�|$rtu8�D$,0���D$	,0��$�D$I��H���   �   H��
I��
랁<$mov tu�|$rtu	f�|$, tu�|$
rtuG�D$,0���D$,0 �$��D$I��H���   �|$4u���D$$�   H��I�����