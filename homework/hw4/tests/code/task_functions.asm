global swap
global Partition
global QuickSort
global MovieYearDivName
global GameMovieYearDivName
global CartoonYearDivName
global DocumentaryDivName

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

CartoonYearDivName:
        push    rbp                                     
        mov     rbp, rsp                                
        mov     qword [rbp-8H], rdi                     
        mov     rax, qword [rbp-8H]                     
        mov     eax, dword [rax+30H]                    
        mov     dword [rbp-10H], eax                    
        vcvtsi2sd xmm1, xmm1, dword [rbp-10H]           
        mov     rax, qword [rbp-8H]                     
        mov     rax, qword [rax]                        
        mov     qword [rbp-10H], rax                    
        vcvtsi2sd xmm0, xmm0, qword [rbp-10H]           
        vdivsd  xmm0, xmm1, xmm0                        
        pop     rbp                                     
        ret                                             



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

MovieYearDivName:
        push    rbp                                     
        mov     rbp, rsp                                
        sub     rsp, 8                                  
        mov     qword [rbp-8H], rdi                     
        mov     rax, qword [rbp-8H]                     
        mov     eax, dword [rax]                        
        test    eax, eax                                
        jnz     .025                                   
        mov     rax, qword [rbp-8H]                     
        mov     rax, qword [rax+8H]                     
        mov     rdi, rax                                
        call    GameMovieYearDivName                    
        jmp     .027                                   

.025:  mov     rax, qword [rbp-8H]                     
        mov     eax, dword [rax]                        
        cmp     eax, 1                                  
        jnz     .026                                   
        mov     rax, qword [rbp-8H]                     
        mov     rax, qword [rax+8H]                     
        mov     rdi, rax                                
        call    CartoonYearDivName                      
        jmp     .027                                   

.026:  mov     rax, qword [rbp-8H]                     
        mov     rax, qword [rax+8H]                     
        mov     rdi, rax                                
        call    DocumentaryDivName                      
.027:  leave                                           
        ret                                             



swap:   
        push    rbp                                     
        mov     rbp, rsp                                
        mov     qword [rbp-18H], rdi                    
        mov     qword [rbp-20H], rsi                    
        mov     rax, qword [rbp-18H]                    
        mov     rdx, qword [rax+8H]                     
        mov     rax, qword [rax]                        
        mov     qword [rbp-10H], rax                    
        mov     qword [rbp-8H], rdx                     
        mov     rcx, qword [rbp-18H]                    
        mov     rax, qword [rbp-20H]                    
        mov     rdx, qword [rax+8H]                     
        mov     rax, qword [rax]                        
        mov     qword [rcx], rax                        
        mov     qword [rcx+8H], rdx                     
        mov     rcx, qword [rbp-20H]                    
        mov     rax, qword [rbp-10H]                    
        mov     rdx, qword [rbp-8H]                     
        mov     qword [rcx], rax                        
        mov     qword [rcx+8H], rdx                     
        nop                                             
        pop     rbp                                     
        ret                                             


Partition:
        push    rbp                                     
        mov     rbp, rsp                                
        sub     rsp, 40                                 
        mov     qword [rbp-18H], rdi                    
        mov     dword [rbp-1CH], esi                    
        mov     dword [rbp-20H], edx                    
        mov     eax, dword [rbp-20H]                    
        mov     dword [rbp-0CH], eax                    
        mov     eax, dword [rbp-1CH]                    
        dec     eax                                     
        mov     dword [rbp-4H], eax                     
        mov     eax, dword [rbp-1CH]                    
        mov     dword [rbp-8H], eax                     
        jmp     .038                                   

.036:  mov     rax, qword [rbp-18H]                    
        mov     edx, dword [rbp-8H]                     
        movsxd  rdx, edx                                
        mov     rax, qword [rax+rdx*8+8H]               
        mov     rdi, rax                                
        call    MovieYearDivName                        
        vmovsd  qword [rbp-28H], xmm0                   
        mov     rax, qword [rbp-18H]                    
        mov     edx, dword [rbp-0CH]                    
        movsxd  rdx, edx                                
        mov     rax, qword [rax+rdx*8+8H]               
        mov     rdi, rax                                
        call    MovieYearDivName                        
        vcomisd xmm0, qword [rbp-28H]                   
        jbe     .037                                   
        inc     dword [rbp-4H]                          
        mov     rax, qword [rbp-18H]                    
        mov     edx, dword [rbp-8H]                     
        movsxd  rdx, edx                                
        mov     rdx, qword [rax+rdx*8+8H]               
        mov     rax, qword [rbp-18H]                    
        mov     ecx, dword [rbp-4H]                     
        movsxd  rcx, ecx                                
        mov     rax, qword [rax+rcx*8+8H]               
        mov     rsi, rdx                                
        mov     rdi, rax                                
        call    swap                                    
.037:  inc     dword [rbp-8H]                          
.038:  mov     eax, dword [rbp-20H]                    
        cmp     eax, dword [rbp-8H]                     
        jg      .036                                   
        mov     rax, qword [rbp-18H]                    
        mov     edx, dword [rbp-20H]                    
        movsxd  rdx, edx                                
        mov     rdx, qword [rax+rdx*8+8H]               
        mov     eax, dword [rbp-4H]                     
        lea     ecx, [rax+1H]                           
        mov     rax, qword [rbp-18H]                    
        movsxd  rcx, ecx                                
        mov     rax, qword [rax+rcx*8+8H]               
        mov     rsi, rdx                                
        mov     rdi, rax                                
        call    swap                                    
        mov     eax, dword [rbp-4H]                     
        inc     eax                                     
        leave                                           
        ret                                             


QuickSort:
        push    rbp                                     
        mov     rbp, rsp                                
        sub     rsp, 32                                 
        mov     qword [rbp-18H], rdi                    
        mov     dword [rbp-1CH], esi                    
        mov     dword [rbp-20H], edx                    
        mov     eax, dword [rbp-1CH]                    
        cmp     eax, dword [rbp-20H]                    
        jge     .039                                   
        mov     edx, dword [rbp-20H]                    
        mov     ecx, dword [rbp-1CH]                    
        mov     rax, qword [rbp-18H]                    
        mov     esi, ecx                                
        mov     rdi, rax                                
        call    Partition                               
        mov     dword [rbp-4H], eax                     
        mov     eax, dword [rbp-4H]                     
        lea     edx, [rax-1H]                           
        mov     ecx, dword [rbp-1CH]                    
        mov     rax, qword [rbp-18H]                    
        mov     esi, ecx                                
        mov     rdi, rax                                
        call    QuickSort                               
        mov     eax, dword [rbp-4H]                     
        lea     ecx, [rax+1H]                           
        mov     edx, dword [rbp-20H]                    
        mov     rax, qword [rbp-18H]                    
        mov     esi, ecx                                
        mov     rdi, rax                                
        call    QuickSort                               
.039:  nop                                             
        leave                                           
        ret                                             
