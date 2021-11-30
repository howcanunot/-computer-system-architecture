global GameMovieYearDivName
global CartoonYearDivName
global DocumentaryDivName
global MovieYearDivName

SECTION .text

GameMovieYearDivName:
        push    rbp
        mov     rbp, rsp
        mov     qword [rbp-8H], rdi
        mov     rax, qword [rbp-8H]
        mov     eax, dword [rax+30H]
        mov     dword [rbp-10H], eax
        vcvtsi2sd xmm0, xmm0, dword [rbp-10H]
        mov     rax, qword [rbp-8H]
        mov     eax, dword [rax]
        mov     dword [rbp-10H], eax
        vcvtsi2sd xmm1, xmm1, dword [rbp-10H]
        vdivsd  xmm0, xmm0, xmm1
        pop     rbp
        ret

CartoonYearDivName:; Function begin
        push    rbp                                     ; 03AD _ 55
        mov     rbp, rsp                                ; 03AE _ 48: 89. E5
        mov     qword [rbp-8H], rdi                     ; 03B1 _ 48: 89. 7D, F8
        mov     rax, qword [rbp-8H]                     ; 03B5 _ 48: 8B. 45, F8
        mov     eax, dword [rax+30H]                    ; 03B9 _ 8B. 40, 30
        mov     dword [rbp-10H], eax                    ; 03BC _ 89. 45, F0
        vcvtsi2sd xmm1, xmm1, dword [rbp-10H]           ; 03BF _ C5 F3: 2A. 4D, F0
        mov     rax, qword [rbp-8H]                     ; 03C4 _ 48: 8B. 45, F8
        mov     rax, qword [rax]                        ; 03C8 _ 48: 8B. 00
        mov     qword [rbp-10H], rax                    ; 03D0 _ 48: 89. 45, F0
        vcvtsi2sd xmm0, xmm0, qword [rbp-10H]           ; 03D4 _ C4 E1 FB: 2A. 45, F0
        vdivsd  xmm0, xmm1, xmm0                        ; 03DA _ EB, 1A
        pop     rbp                                     ; 03FA _ 5D
        ret                                             ; 03FB _ C3
; CartoonYearDivName End of function


DocumentaryDivName:
        push    rbp                                     
        mov     rbp, rsp                                
        mov     qword [rbp-8H], rdi                     
        mov     rax, qword [rbp-8H]                     
        mov     eax, dword [rax+2CH]                    
        mov     dword [rbp-0CH], eax                    
        vcvtsi2sd xmm0, xmm0, dword [rbp-0CH]           
        mov     rax, qword [rbp-8H]                     
        mov     eax, dword [rax]                        
        mov     dword [rbp-0CH], eax                    
        vcvtsi2sd xmm1, xmm1, dword [rbp-0CH]           
        vdivsd  xmm0, xmm0, xmm1                        
        pop     rbp                                     
        ret

