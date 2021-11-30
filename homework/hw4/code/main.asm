; Disassembly of file: main.obj
; Tue Nov 30 15:06:50 2021
; Type: ELF64
; Syntax: NASM
; Instruction set: AVX, x64



global Random
global RandomDuration
global GameMovieIn
global GameMovieInRnd
global GameMovieYearDivName
global GameMovieOut
global CartoonIn
global CartoonInRnd
global CartoonYearDivName
global CartoonOut
global DocumentaryIn
global DocumentaryInRnd
global DocumentaryDivName
global DocumentaryOut
global MovieIn
global MovieInRnd
global MovieOut
global MovieYearDivName
global Init
global Clear
global ContainerIn
global ContainerInRnd
global ContainerOut
global swap
global Partition
global QuickSort
global errMessage1
global errMessage2
global main

extern atoi                                             ; near
extern fclose                                           ; near
extern fopen                                            ; near
extern puts                                             ; near
extern feof                                             ; near
extern free                                             ; near
extern fwrite                                           ; near
extern exit                                             ; near
extern printf                                           ; near
extern malloc                                           ; near
extern strcmp                                           ; near
extern fprintf                                          ; near
extern strlen                                           ; near
extern __isoc99_fscanf                                  ; near
                            ; byte
extern rand                                             ; near


SECTION .text                             ; section number 1, code

Random: ; Function begin
        push    rbp                                     ; 0004 _ 55
        mov     rbp, rsp                                ; 0005 _ 48: 89. E5
        call    rand                                    ; 0008 _ E8, 00000000(PLT r)
        mov     ecx, eax                                ; 000D _ 89. C1
        movsxd  rax, ecx                                ; 000F _ 48: 63. C1
        imul    rax, rax, 1321528399                    ; 0012 _ 48: 69. C0, 4EC4EC4F
        shr     rax, 32                                 ; 0019 _ 48: C1. E8, 20
        mov     edx, eax                                ; 001D _ 89. C2
        sar     edx, 3                                  ; 001F _ C1. FA, 03
        mov     eax, ecx                                ; 0022 _ 89. C8
        sar     eax, 31                                 ; 0024 _ C1. F8, 1F
        sub     edx, eax                                ; 0027 _ 29. C2
        mov     eax, edx                                ; 0029 _ 89. D0
        add     eax, eax                                ; 002B _ 01. C0
        add     eax, edx                                ; 002D _ 01. D0
        shl     eax, 2                                  ; 002F _ C1. E0, 02
        add     eax, edx                                ; 0032 _ 01. D0
        add     eax, eax                                ; 0034 _ 01. C0
        sub     ecx, eax                                ; 0036 _ 29. C1
        mov     edx, ecx                                ; 0038 _ 89. CA
        mov     eax, edx                                ; 003A _ 89. D0
        pop     rbp                                     ; 003C _ 5D
        ret                                             ; 003D _ C3
; Random End of function

RandomDuration:; Function begin
        push    rbp                                     ; 0042 _ 55
        mov     rbp, rsp                                ; 0043 _ 48: 89. E5
        call    rand                                    ; 0046 _ E8, 00000000(PLT r)
        movsxd  rdx, eax                                ; 004B _ 48: 63. D0
        imul    rdx, rdx, -1240768329                   ; 004E _ 48: 69. D2, B60B60B7
        shr     rdx, 32                                 ; 0055 _ 48: C1. EA, 20
        add     edx, eax                                ; 0059 _ 01. C2
        mov     ecx, edx                                ; 005B _ 89. D1
        sar     ecx, 6                                  ; 005D _ C1. F9, 06
        cdq                                             ; 0060 _ 99
        sub     ecx, edx                                ; 0061 _ 29. D1
        mov     edx, ecx                                ; 0063 _ 89. CA
        imul    edx, edx, 90                            ; 0065 _ 6B. D2, 5A
        sub     eax, edx                                ; 0068 _ 29. D0
        mov     edx, eax                                ; 006A _ 89. C2
        lea     eax, [rdx+5AH]                          ; 006C _ 8D. 42, 5A
        pop     rbp                                     ; 006F _ 5D
        ret                                             ; 0070 _ C3
; RandomDuration End of function

GameMovieIn:; Function begin
        push    rbp                                     ; 0075 _ 55
        mov     rbp, rsp                                ; 0076 _ 48: 89. E5
        sub     rsp, 16                                 ; 0079 _ 48: 83. EC, 10
        mov     qword [rbp-8H], rdi                     ; 007D _ 48: 89. 7D, F8
        mov     qword [rbp-10H], rsi                    ; 0081 _ 48: 89. 75, F0
        mov     rax, qword [rbp-8H]                     ; 0085 _ 48: 8B. 45, F8
        lea     rsi, [rax+40H]                          ; 0089 _ 48: 8D. 70, 40
        mov     rax, qword [rbp-8H]                     ; 008D _ 48: 8B. 45, F8
        lea     rcx, [rax+30H]                          ; 0091 _ 48: 8D. 48, 30
        mov     rax, qword [rbp-8H]                     ; 0095 _ 48: 8B. 45, F8
        lea     rdx, [rax+8H]                           ; 0099 _ 48: 8D. 50, 08
        mov     rax, qword [rbp-10H]                    ; 009D _ 48: 8B. 45, F0
        mov     r8, rsi                                 ; 00A1 _ 49: 89. F0
        lea     rsi, [rel ?_046]                        ; 00A4 _ 48: 8D. 35, 00000000(rel)
        mov     rdi, rax                                ; 00AB _ 48: 89. C7
        mov     eax, 0                                  ; 00AE _ B8, 00000000
        call    __isoc99_fscanf                         ; 00B3 _ E8, 00000000(PLT r)
        mov     rax, qword [rbp-8H]                     ; 00B8 _ 48: 8B. 45, F8
        add     rax, 8                                  ; 00BC _ 48: 83. C0, 08
        mov     rdi, rax                                ; 00C0 _ 48: 89. C7
        call    strlen                                  ; 00C3 _ E8, 00000000(PLT r)
        mov     rdx, qword [rbp-8H]                     ; 00C8 _ 48: 8B. 55, F8
        mov     qword [rdx], rax                        ; 00CC _ 48: 89. 02
        mov     rax, qword [rbp-8H]                     ; 00CF _ 48: 8B. 45, F8
        add     rax, 64                                 ; 00D3 _ 48: 83. C0, 40
        mov     rdi, rax                                ; 00D7 _ 48: 89. C7
        call    strlen                                  ; 00DA _ E8, 00000000(PLT r)
        mov     rdx, qword [rbp-8H]                     ; 00DF _ 48: 8B. 55, F8
        mov     qword [rdx+38H], rax                    ; 00E3 _ 48: 89. 42, 38
        nop                                             ; 00E7 _ 90
        leave                                           ; 00E8 _ C9
        ret                                             ; 00E9 _ C3
; GameMovieIn End of function

GameMovieInRnd:; Function begin
        push    rbp                                     ; 00EE _ 55
        mov     rbp, rsp                                ; 00EF _ 48: 89. E5
        sub     rsp, 32                                 ; 00F2 _ 48: 83. EC, 20
        mov     qword [rbp-18H], rdi                    ; 00F6 _ 48: 89. 7D, E8
        mov     eax, 0                                  ; 00FA _ B8, 00000000
        call    Random                                  ; 00FF _ E8, 00000000(PLT r)
        inc     eax                                     ; 0104 _ FF. C0
        movsxd  rdx, eax                                ; 0106 _ 48: 63. D0
        mov     rax, qword [rbp-18H]                    ; 0109 _ 48: 8B. 45, E8
        mov     qword [rax], rdx                        ; 010D _ 48: 89. 10
        mov     qword [rbp-8H], 0                       ; 0110 _ 48: C7. 45, F8, 00000000
        jmp     ?_002                                   ; 0118 _ EB, 24

?_001:  mov     eax, 0                                  ; 011A _ B8, 00000000
        call    Random                                  ; 011F _ E8, 00000000(PLT r)
        add     eax, 97                                 ; 0124 _ 83. C0, 61
        mov     ecx, eax                                ; 0127 _ 89. C1
        mov     rdx, qword [rbp-18H]                    ; 0129 _ 48: 8B. 55, E8
        mov     rax, qword [rbp-8H]                     ; 012D _ 48: 8B. 45, F8
        add     rax, rdx                                ; 0131 _ 48: 01. D0
        add     rax, 8                                  ; 0134 _ 48: 83. C0, 08
        mov     byte [rax], cl                          ; 0138 _ 88. 08
        inc     qword [rbp-8H]                          ; 013A _ 48: FF. 45, F8
?_002:  mov     rax, qword [rbp-18H]                    ; 013E _ 48: 8B. 45, E8
        mov     rax, qword [rax]                        ; 0142 _ 48: 8B. 00
        cmp     qword [rbp-8H], rax                     ; 0145 _ 48: 39. 45, F8
        jc      ?_001                                   ; 0149 _ 72, CF
        mov     eax, 0                                  ; 014B _ B8, 00000000
        call    Random                                  ; 0150 _ E8, 00000000(PLT r)
        movsxd  rdx, eax                                ; 0155 _ 48: 63. D0
        mov     rax, qword [rbp-18H]                    ; 0158 _ 48: 8B. 45, E8
        mov     qword [rax+38H], rdx                    ; 015C _ 48: 89. 50, 38
        mov     qword [rbp-10H], 0                      ; 0160 _ 48: C7. 45, F0, 00000000
        jmp     ?_004                                   ; 0168 _ EB, 24

?_003:  mov     eax, 0                                  ; 016A _ B8, 00000000
        call    Random                                  ; 016F _ E8, 00000000(PLT r)
        add     eax, 97                                 ; 0174 _ 83. C0, 61
        mov     ecx, eax                                ; 0177 _ 89. C1
        mov     rdx, qword [rbp-18H]                    ; 0179 _ 48: 8B. 55, E8
        mov     rax, qword [rbp-10H]                    ; 017D _ 48: 8B. 45, F0
        add     rax, rdx                                ; 0181 _ 48: 01. D0
        add     rax, 64                                 ; 0184 _ 48: 83. C0, 40
        mov     byte [rax], cl                          ; 0188 _ 88. 08
        inc     qword [rbp-10H]                         ; 018A _ 48: FF. 45, F0
?_004:  mov     rax, qword [rbp-18H]                    ; 018E _ 48: 8B. 45, E8
        mov     rax, qword [rax+38H]                    ; 0192 _ 48: 8B. 40, 38
        cmp     qword [rbp-10H], rax                    ; 0196 _ 48: 39. 45, F0
        jc      ?_003                                   ; 019A _ 72, CE
        mov     rax, qword [rbp-18H]                    ; 019C _ 48: 8B. 45, E8
        mov     rax, qword [rax]                        ; 01A0 _ 48: 8B. 00
        mov     rdx, qword [rbp-18H]                    ; 01A3 _ 48: 8B. 55, E8
        mov     byte [rdx+rax+8H], 0                    ; 01A7 _ C6. 44 02, 08, 00
        mov     rax, qword [rbp-18H]                    ; 01AC _ 48: 8B. 45, E8
        mov     rax, qword [rax+38H]                    ; 01B0 _ 48: 8B. 40, 38
        mov     rdx, qword [rbp-18H]                    ; 01B4 _ 48: 8B. 55, E8
        mov     byte [rdx+rax+40H], 0                   ; 01B8 _ C6. 44 02, 40, 00
        mov     eax, 0                                  ; 01BD _ B8, 00000000
        call    Random                                  ; 01C2 _ E8, 00000000(PLT r)
        lea     edx, [rax+79EH]                         ; 01C7 _ 8D. 90, 0000079E
        mov     rax, qword [rbp-18H]                    ; 01CD _ 48: 8B. 45, E8
        mov     dword [rax+30H], edx                    ; 01D1 _ 89. 50, 30
        nop                                             ; 01D4 _ 90
        leave                                           ; 01D5 _ C9
        ret                                             ; 01D6 _ C3
; GameMovieInRnd End of function

GameMovieYearDivName:; Function begin
        push    rbp                                     ; 01DB _ 55
        mov     rbp, rsp                                ; 01DC _ 48: 89. E5
        mov     qword [rbp-8H], rdi                     ; 01DF _ 48: 89. 7D, F8
        mov     rax, qword [rbp-8H]                     ; 01E3 _ 48: 8B. 45, F8
        mov     eax, dword [rax+30H]                    ; 01E7 _ 8B. 40, 30
        mov     dword [rbp-10H], eax                    ; 01EA _ 89. 45, F0
        vcvtsi2sd xmm1, xmm1, dword [rbp-10H]           ; 01ED _ C5 F3: 2A. 4D, F0
        mov     rax, qword [rbp-8H]                     ; 01F2 _ 48: 8B. 45, F8
        mov     rax, qword [rax]                        ; 01F6 _ 48: 8B. 00
        test    rax, rax                                ; 01F9 _ 48: 85. C0
        js      ?_005                                   ; 01FC _ 78, 0C
        mov     qword [rbp-10H], rax                    ; 01FE _ 48: 89. 45, F0
        vcvtsi2sd xmm0, xmm0, qword [rbp-10H]           ; 0202 _ C4 E1 FB: 2A. 45, F0
        jmp     ?_006                                   ; 0208 _ EB, 1A

?_005:  mov     rdx, rax                                ; 020A _ 48: 89. C2
        shr     rdx, 1                                  ; 020D _ 48: D1. EA
        and     eax, 01H                                ; 0210 _ 83. E0, 01
        or      rdx, rax                                ; 0213 _ 48: 09. C2
        mov     qword [rbp-10H], rdx                    ; 0216 _ 48: 89. 55, F0
        vcvtsi2sd xmm0, xmm0, qword [rbp-10H]           ; 021A _ C4 E1 FB: 2A. 45, F0
        vaddsd  xmm0, xmm0, xmm0                        ; 0220 _ C5 FB: 58. C0
?_006:  vdivsd  xmm0, xmm1, xmm0                        ; 0224 _ C5 F3: 5E. C0
        pop     rbp                                     ; 0228 _ 5D
        ret                                             ; 0229 _ C3
; GameMovieYearDivName End of function

GameMovieOut:; Function begin
        push    rbp                                     ; 022E _ 55
        mov     rbp, rsp                                ; 022F _ 48: 89. E5
        sub     rsp, 16                                 ; 0232 _ 48: 83. EC, 10
        mov     qword [rbp-8H], rdi                     ; 0236 _ 48: 89. 7D, F8
        mov     qword [rbp-10H], rsi                    ; 023A _ 48: 89. 75, F0
        mov     rax, qword [rbp-8H]                     ; 023E _ 48: 8B. 45, F8
        mov     rdi, rax                                ; 0242 _ 48: 89. C7
        call    GameMovieYearDivName                    ; 0245 _ E8, 00000000(PLT r)
        mov     rax, qword [rbp-8H]                     ; 024A _ 48: 8B. 45, F8
        lea     rcx, [rax+40H]                          ; 024E _ 48: 8D. 48, 40
        mov     rax, qword [rbp-8H]                     ; 0252 _ 48: 8B. 45, F8
        mov     edx, dword [rax+30H]                    ; 0256 _ 8B. 50, 30
        mov     rax, qword [rbp-8H]                     ; 0259 _ 48: 8B. 45, F8
        lea     rsi, [rax+8H]                           ; 025D _ 48: 8D. 70, 08
        mov     rax, qword [rbp-10H]                    ; 0261 _ 48: 8B. 45, F0
        mov     r8, rcx                                 ; 0265 _ 49: 89. C8
        mov     ecx, edx                                ; 0268 _ 89. D1
        mov     rdx, rsi                                ; 026A _ 48: 89. F2
        lea     rsi, [rel ?_047]                        ; 026D _ 48: 8D. 35, 00000000(rel)
        mov     rdi, rax                                ; 0274 _ 48: 89. C7
        mov     eax, 1                                  ; 0277 _ B8, 00000001
        call    fprintf                                 ; 027C _ E8, 00000000(PLT r)
        nop                                             ; 0281 _ 90
        leave                                           ; 0282 _ C9
        ret                                             ; 0283 _ C3
; GameMovieOut End of function

CartoonIn:; Function begin
        push    rbp                                     ; 0288 _ 55
        mov     rbp, rsp                                ; 0289 _ 48: 89. E5
        sub     rsp, 16                                 ; 028C _ 48: 83. EC, 10
        mov     qword [rbp-8H], rdi                     ; 0290 _ 48: 89. 7D, F8
        mov     qword [rbp-10H], rsi                    ; 0294 _ 48: 89. 75, F0
        mov     rax, qword [rbp-8H]                     ; 0298 _ 48: 8B. 45, F8
        lea     rsi, [rax+34H]                          ; 029C _ 48: 8D. 70, 34
        mov     rax, qword [rbp-8H]                     ; 02A0 _ 48: 8B. 45, F8
        lea     rcx, [rax+30H]                          ; 02A4 _ 48: 8D. 48, 30
        mov     rax, qword [rbp-8H]                     ; 02A8 _ 48: 8B. 45, F8
        lea     rdx, [rax+8H]                           ; 02AC _ 48: 8D. 50, 08
        mov     rax, qword [rbp-10H]                    ; 02B0 _ 48: 8B. 45, F0
        mov     r8, rsi                                 ; 02B4 _ 49: 89. F0
        lea     rsi, [rel ?_048]                        ; 02B7 _ 48: 8D. 35, 00000000(rel)
        mov     rdi, rax                                ; 02BE _ 48: 89. C7
        mov     eax, 0                                  ; 02C1 _ B8, 00000000
        call    __isoc99_fscanf                         ; 02C6 _ E8, 00000000(PLT r)
        mov     rax, qword [rbp-8H]                     ; 02CB _ 48: 8B. 45, F8
        add     rax, 8                                  ; 02CF _ 48: 83. C0, 08
        mov     rdi, rax                                ; 02D3 _ 48: 89. C7
        call    strlen                                  ; 02D6 _ E8, 00000000(PLT r)
        mov     rdx, qword [rbp-8H]                     ; 02DB _ 48: 8B. 55, F8
        mov     qword [rdx], rax                        ; 02DF _ 48: 89. 02
        nop                                             ; 02E2 _ 90
        leave                                           ; 02E3 _ C9
        ret                                             ; 02E4 _ C3
; CartoonIn End of function

CartoonInRnd:; Function begin
        push    rbp                                     ; 02E9 _ 55
        mov     rbp, rsp                                ; 02EA _ 48: 89. E5
        sub     rsp, 32                                 ; 02ED _ 48: 83. EC, 20
        mov     qword [rbp-18H], rdi                    ; 02F1 _ 48: 89. 7D, E8
        mov     eax, 0                                  ; 02F5 _ B8, 00000000
        call    Random                                  ; 02FA _ E8, 00000000(PLT r)
        inc     eax                                     ; 02FF _ FF. C0
        movsxd  rdx, eax                                ; 0301 _ 48: 63. D0
        mov     rax, qword [rbp-18H]                    ; 0304 _ 48: 8B. 45, E8
        mov     qword [rax], rdx                        ; 0308 _ 48: 89. 10
        mov     qword [rbp-8H], 0                       ; 030B _ 48: C7. 45, F8, 00000000
        jmp     ?_008                                   ; 0313 _ EB, 24

?_007:  mov     eax, 0                                  ; 0315 _ B8, 00000000
        call    Random                                  ; 031A _ E8, 00000000(PLT r)
        add     eax, 97                                 ; 031F _ 83. C0, 61
        mov     ecx, eax                                ; 0322 _ 89. C1
        mov     rdx, qword [rbp-18H]                    ; 0324 _ 48: 8B. 55, E8
        mov     rax, qword [rbp-8H]                     ; 0328 _ 48: 8B. 45, F8
        add     rax, rdx                                ; 032C _ 48: 01. D0
        add     rax, 8                                  ; 032F _ 48: 83. C0, 08
        mov     byte [rax], cl                          ; 0333 _ 88. 08
        inc     qword [rbp-8H]                          ; 0335 _ 48: FF. 45, F8
?_008:  mov     rax, qword [rbp-18H]                    ; 0339 _ 48: 8B. 45, E8
        mov     rax, qword [rax]                        ; 033D _ 48: 8B. 00
        cmp     qword [rbp-8H], rax                     ; 0340 _ 48: 39. 45, F8
        jc      ?_007                                   ; 0344 _ 72, CF
        mov     rax, qword [rbp-18H]                    ; 0346 _ 48: 8B. 45, E8
        mov     rax, qword [rax]                        ; 034A _ 48: 8B. 00
        mov     rdx, qword [rbp-18H]                    ; 034D _ 48: 8B. 55, E8
        mov     byte [rdx+rax+8H], 0                    ; 0351 _ C6. 44 02, 08, 00
        mov     eax, 0                                  ; 0356 _ B8, 00000000
        call    Random                                  ; 035B _ E8, 00000000(PLT r)
        mov     ecx, eax                                ; 0360 _ 89. C1
        movsxd  rax, ecx                                ; 0362 _ 48: 63. C1
        imul    rax, rax, 1431655766                    ; 0365 _ 48: 69. C0, 55555556
        shr     rax, 32                                 ; 036C _ 48: C1. E8, 20
        mov     rdx, rax                                ; 0370 _ 48: 89. C2
        mov     eax, ecx                                ; 0373 _ 89. C8
        sar     eax, 31                                 ; 0375 _ C1. F8, 1F
        mov     esi, edx                                ; 0378 _ 89. D6
        sub     esi, eax                                ; 037A _ 29. C6
        mov     eax, esi                                ; 037C _ 89. F0
        mov     edx, eax                                ; 037E _ 89. C2
        add     edx, edx                                ; 0380 _ 01. D2
        add     edx, eax                                ; 0382 _ 01. C2
        mov     eax, ecx                                ; 0384 _ 89. C8
        sub     eax, edx                                ; 0386 _ 29. D0
        mov     rdx, qword [rbp-18H]                    ; 0388 _ 48: 8B. 55, E8
        mov     dword [rdx+34H], eax                    ; 038C _ 89. 42, 34
        mov     eax, 0                                  ; 038F _ B8, 00000000
        call    Random                                  ; 0394 _ E8, 00000000(PLT r)
        lea     edx, [rax+79EH]                         ; 0399 _ 8D. 90, 0000079E
        mov     rax, qword [rbp-18H]                    ; 039F _ 48: 8B. 45, E8
        mov     dword [rax+30H], edx                    ; 03A3 _ 89. 50, 30
        nop                                             ; 03A6 _ 90
        leave                                           ; 03A7 _ C9
        ret                                             ; 03A8 _ C3
; CartoonInRnd End of function

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
        test    rax, rax                                ; 03CB _ 48: 85. C0
        js      ?_009                                   ; 03CE _ 78, 0C
        mov     qword [rbp-10H], rax                    ; 03D0 _ 48: 89. 45, F0
        vcvtsi2sd xmm0, xmm0, qword [rbp-10H]           ; 03D4 _ C4 E1 FB: 2A. 45, F0
        jmp     ?_010                                   ; 03DA _ EB, 1A

?_009:  mov     rdx, rax                                ; 03DC _ 48: 89. C2
        shr     rdx, 1                                  ; 03DF _ 48: D1. EA
        and     eax, 01H                                ; 03E2 _ 83. E0, 01
        or      rdx, rax                                ; 03E5 _ 48: 09. C2
        mov     qword [rbp-10H], rdx                    ; 03E8 _ 48: 89. 55, F0
        vcvtsi2sd xmm0, xmm0, qword [rbp-10H]           ; 03EC _ C4 E1 FB: 2A. 45, F0
        vaddsd  xmm0, xmm0, xmm0                        ; 03F2 _ C5 FB: 58. C0
?_010:  vdivsd  xmm0, xmm1, xmm0                        ; 03F6 _ C5 F3: 5E. C0
        pop     rbp                                     ; 03FA _ 5D
        ret                                             ; 03FB _ C3
; CartoonYearDivName End of function

CartoonOut:; Function begin
        push    rbp                                     ; 0400 _ 55
        mov     rbp, rsp                                ; 0401 _ 48: 89. E5
        sub     rsp, 16                                 ; 0404 _ 48: 83. EC, 10
        mov     qword [rbp-8H], rdi                     ; 0408 _ 48: 89. 7D, F8
        mov     qword [rbp-10H], rsi                    ; 040C _ 48: 89. 75, F0
        mov     rax, qword [rbp-8H]                     ; 0410 _ 48: 8B. 45, F8
        mov     rdi, rax                                ; 0414 _ 48: 89. C7
        call    CartoonYearDivName                      ; 0417 _ E8, 00000000(PLT r)
        mov     rax, qword [rbp-8H]                     ; 041C _ 48: 8B. 45, F8
        mov     ecx, dword [rax+34H]                    ; 0420 _ 8B. 48, 34
        mov     rax, qword [rbp-8H]                     ; 0423 _ 48: 8B. 45, F8
        mov     edx, dword [rax+30H]                    ; 0427 _ 8B. 50, 30
        mov     rax, qword [rbp-8H]                     ; 042A _ 48: 8B. 45, F8
        lea     rsi, [rax+8H]                           ; 042E _ 48: 8D. 70, 08
        mov     rax, qword [rbp-10H]                    ; 0432 _ 48: 8B. 45, F0
        mov     r8d, ecx                                ; 0436 _ 41: 89. C8
        mov     ecx, edx                                ; 0439 _ 89. D1
        mov     rdx, rsi                                ; 043B _ 48: 89. F2
        lea     rsi, [rel ?_049]                        ; 043E _ 48: 8D. 35, 00000000(rel)
        mov     rdi, rax                                ; 0445 _ 48: 89. C7
        mov     eax, 1                                  ; 0448 _ B8, 00000001
        call    fprintf                                 ; 044D _ E8, 00000000(PLT r)
        nop                                             ; 0452 _ 90
        leave                                           ; 0453 _ C9
        ret                                             ; 0454 _ C3
; CartoonOut End of function

DocumentaryIn:; Function begin
        push    rbp                                     ; 0459 _ 55
        mov     rbp, rsp                                ; 045A _ 48: 89. E5
        sub     rsp, 16                                 ; 045D _ 48: 83. EC, 10
        mov     qword [rbp-8H], rdi                     ; 0461 _ 48: 89. 7D, F8
        mov     qword [rbp-10H], rsi                    ; 0465 _ 48: 89. 75, F0
        mov     rax, qword [rbp-8H]                     ; 0469 _ 48: 8B. 45, F8
        lea     rsi, [rax+30H]                          ; 046D _ 48: 8D. 70, 30
        mov     rax, qword [rbp-8H]                     ; 0471 _ 48: 8B. 45, F8
        lea     rcx, [rax+2CH]                          ; 0475 _ 48: 8D. 48, 2C
        mov     rax, qword [rbp-8H]                     ; 0479 _ 48: 8B. 45, F8
        lea     rdx, [rax+4H]                           ; 047D _ 48: 8D. 50, 04
        mov     rax, qword [rbp-10H]                    ; 0481 _ 48: 8B. 45, F0
        mov     r8, rsi                                 ; 0485 _ 49: 89. F0
        lea     rsi, [rel ?_048]                        ; 0488 _ 48: 8D. 35, 00000000(rel)
        mov     rdi, rax                                ; 048F _ 48: 89. C7
        mov     eax, 0                                  ; 0492 _ B8, 00000000
        call    __isoc99_fscanf                         ; 0497 _ E8, 00000000(PLT r)
        mov     rax, qword [rbp-8H]                     ; 049C _ 48: 8B. 45, F8
        add     rax, 4                                  ; 04A0 _ 48: 83. C0, 04
        mov     rdi, rax                                ; 04A4 _ 48: 89. C7
        call    strlen                                  ; 04A7 _ E8, 00000000(PLT r)
        mov     edx, eax                                ; 04AC _ 89. C2
        mov     rax, qword [rbp-8H]                     ; 04AE _ 48: 8B. 45, F8
        mov     dword [rax], edx                        ; 04B2 _ 89. 10
        nop                                             ; 04B4 _ 90
        leave                                           ; 04B5 _ C9
        ret                                             ; 04B6 _ C3
; DocumentaryIn End of function

DocumentaryInRnd:; Function begin
        push    rbp                                     ; 04BB _ 55
        mov     rbp, rsp                                ; 04BC _ 48: 89. E5
        sub     rsp, 32                                 ; 04BF _ 48: 83. EC, 20
        mov     qword [rbp-18H], rdi                    ; 04C3 _ 48: 89. 7D, E8
        mov     eax, 0                                  ; 04C7 _ B8, 00000000
        call    Random                                  ; 04CC _ E8, 00000000(PLT r)
        lea     edx, [rax+1H]                           ; 04D1 _ 8D. 50, 01
        mov     rax, qword [rbp-18H]                    ; 04D4 _ 48: 8B. 45, E8
        mov     dword [rax], edx                        ; 04D8 _ 89. 10
        mov     qword [rbp-8H], 0                       ; 04DA _ 48: C7. 45, F8, 00000000
        jmp     ?_012                                   ; 04E2 _ EB, 24

?_011:  mov     eax, 0                                  ; 04E4 _ B8, 00000000
        call    Random                                  ; 04E9 _ E8, 00000000(PLT r)
        add     eax, 97                                 ; 04EE _ 83. C0, 61
        mov     ecx, eax                                ; 04F1 _ 89. C1
        mov     rdx, qword [rbp-18H]                    ; 04F3 _ 48: 8B. 55, E8
        mov     rax, qword [rbp-8H]                     ; 04F7 _ 48: 8B. 45, F8
        add     rax, rdx                                ; 04FB _ 48: 01. D0
        add     rax, 4                                  ; 04FE _ 48: 83. C0, 04
        mov     byte [rax], cl                          ; 0502 _ 88. 08
        inc     qword [rbp-8H]                          ; 0504 _ 48: FF. 45, F8
?_012:  mov     rax, qword [rbp-18H]                    ; 0508 _ 48: 8B. 45, E8
        mov     eax, dword [rax]                        ; 050C _ 8B. 00
        cdqe                                            ; 050E _ 48: 98
        cmp     qword [rbp-8H], rax                     ; 0510 _ 48: 39. 45, F8
        jc      ?_011                                   ; 0514 _ 72, CE
        mov     rax, qword [rbp-18H]                    ; 0516 _ 48: 8B. 45, E8
        mov     eax, dword [rax]                        ; 051A _ 8B. 00
        mov     rdx, qword [rbp-18H]                    ; 051C _ 48: 8B. 55, E8
        cdqe                                            ; 0520 _ 48: 98
        mov     byte [rdx+rax+4H], 0                    ; 0522 _ C6. 44 02, 04, 00
        mov     eax, 0                                  ; 0527 _ B8, 00000000
        call    RandomDuration                          ; 052C _ E8, 00000000(PLT r)
        mov     rdx, qword [rbp-18H]                    ; 0531 _ 48: 8B. 55, E8
        mov     dword [rdx+30H], eax                    ; 0535 _ 89. 42, 30
        mov     eax, 0                                  ; 0538 _ B8, 00000000
        call    Random                                  ; 053D _ E8, 00000000(PLT r)
        lea     edx, [rax+79EH]                         ; 0542 _ 8D. 90, 0000079E
        mov     rax, qword [rbp-18H]                    ; 0548 _ 48: 8B. 45, E8
        mov     dword [rax+2CH], edx                    ; 054C _ 89. 50, 2C
        nop                                             ; 054F _ 90
        leave                                           ; 0550 _ C9
        ret                                             ; 0551 _ C3
; DocumentaryInRnd End of function

DocumentaryDivName:; Function begin
        push    rbp                                     ; 0556 _ 55
        mov     rbp, rsp                                ; 0557 _ 48: 89. E5
        mov     qword [rbp-8H], rdi                     ; 055A _ 48: 89. 7D, F8
        mov     rax, qword [rbp-8H]                     ; 055E _ 48: 8B. 45, F8
        mov     eax, dword [rax+2CH]                    ; 0562 _ 8B. 40, 2C
        mov     dword [rbp-0CH], eax                    ; 0565 _ 89. 45, F4
        vcvtsi2sd xmm0, xmm0, dword [rbp-0CH]           ; 0568 _ C5 FB: 2A. 45, F4
        mov     rax, qword [rbp-8H]                     ; 056D _ 48: 8B. 45, F8
        mov     eax, dword [rax]                        ; 0571 _ 8B. 00
        mov     dword [rbp-0CH], eax                    ; 0573 _ 89. 45, F4
        vcvtsi2sd xmm1, xmm1, dword [rbp-0CH]           ; 0576 _ C5 F3: 2A. 4D, F4
        vdivsd  xmm0, xmm0, xmm1                        ; 057B _ C5 FB: 5E. C1
        pop     rbp                                     ; 057F _ 5D
        ret                                             ; 0580 _ C3
; DocumentaryDivName End of function

DocumentaryOut:; Function begin
        push    rbp                                     ; 0585 _ 55
        mov     rbp, rsp                                ; 0586 _ 48: 89. E5
        sub     rsp, 16                                 ; 0589 _ 48: 83. EC, 10
        mov     qword [rbp-8H], rdi                     ; 058D _ 48: 89. 7D, F8
        mov     qword [rbp-10H], rsi                    ; 0591 _ 48: 89. 75, F0
        mov     rax, qword [rbp-8H]                     ; 0595 _ 48: 8B. 45, F8
        mov     rdi, rax                                ; 0599 _ 48: 89. C7
        call    DocumentaryDivName                      ; 059C _ E8, 00000000(PLT r)
        mov     rax, qword [rbp-8H]                     ; 05A1 _ 48: 8B. 45, F8
        mov     ecx, dword [rax+30H]                    ; 05A5 _ 8B. 48, 30
        mov     rax, qword [rbp-8H]                     ; 05A8 _ 48: 8B. 45, F8
        mov     edx, dword [rax+2CH]                    ; 05AC _ 8B. 50, 2C
        mov     rax, qword [rbp-8H]                     ; 05AF _ 48: 8B. 45, F8
        lea     rsi, [rax+4H]                           ; 05B3 _ 48: 8D. 70, 04
        mov     rax, qword [rbp-10H]                    ; 05B7 _ 48: 8B. 45, F0
        mov     r8d, ecx                                ; 05BB _ 41: 89. C8
        mov     ecx, edx                                ; 05BE _ 89. D1
        mov     rdx, rsi                                ; 05C0 _ 48: 89. F2
        lea     rsi, [rel ?_050]                        ; 05C3 _ 48: 8D. 35, 00000000(rel)
        mov     rdi, rax                                ; 05CA _ 48: 89. C7
        mov     eax, 1                                  ; 05CD _ B8, 00000001
        call    fprintf                                 ; 05D2 _ E8, 00000000(PLT r)
        nop                                             ; 05D7 _ 90
        leave                                           ; 05D8 _ C9
        ret                                             ; 05D9 _ C3
; DocumentaryOut End of function

MovieIn:; Function begin
        push    rbp                                     ; 05DE _ 55
        mov     rbp, rsp                                ; 05DF _ 48: 89. E5
        sub     rsp, 64                                 ; 05E2 _ 48: 83. EC, 40
        mov     qword [rbp-38H], rdi                    ; 05E6 _ 48: 89. 7D, C8
        lea     rdx, [rbp-30H]                          ; 05EA _ 48: 8D. 55, D0
        mov     rax, qword [rbp-38H]                    ; 05EE _ 48: 8B. 45, C8
        lea     rsi, [rel ?_051]                        ; 05F2 _ 48: 8D. 35, 00000000(rel)
        mov     rdi, rax                                ; 05F9 _ 48: 89. C7
        mov     eax, 0                                  ; 05FC _ B8, 00000000
        call    __isoc99_fscanf                         ; 0601 _ E8, 00000000(PLT r)
        lea     rax, [rbp-30H]                          ; 0606 _ 48: 8D. 45, D0
        lea     rsi, [rel ?_052]                        ; 060A _ 48: 8D. 35, 00000000(rel)
        mov     rdi, rax                                ; 0611 _ 48: 89. C7
        call    strcmp                                  ; 0614 _ E8, 00000000(PLT r)
        test    eax, eax                                ; 0619 _ 85. C0
        jnz     ?_013                                   ; 061B _ 75, 34
        mov     edi, 104                                ; 061D _ BF, 00000068
        call    malloc                                  ; 0622 _ E8, 00000000(PLT r)
        mov     qword [rbp-8H], rax                     ; 0627 _ 48: 89. 45, F8
        mov     rax, qword [rbp-8H]                     ; 062B _ 48: 8B. 45, F8
        mov     dword [rax], 0                          ; 062F _ C7. 00, 00000000
        mov     rax, qword [rbp-8H]                     ; 0635 _ 48: 8B. 45, F8
        mov     rax, qword [rax+8H]                     ; 0639 _ 48: 8B. 40, 08
        mov     rdx, qword [rbp-38H]                    ; 063D _ 48: 8B. 55, C8
        mov     rsi, rdx                                ; 0641 _ 48: 89. D6
        mov     rdi, rax                                ; 0644 _ 48: 89. C7
        call    GameMovieIn                             ; 0647 _ E8, 00000000(PLT r)
        jmp     ?_016                                   ; 064C _ E9, 000000B2

?_013:  lea     rax, [rbp-30H]                          ; 0651 _ 48: 8D. 45, D0
        lea     rsi, [rel ?_053]                        ; 0655 _ 48: 8D. 35, 00000000(rel)
        mov     rdi, rax                                ; 065C _ 48: 89. C7
        call    strcmp                                  ; 065F _ E8, 00000000(PLT r)
        test    eax, eax                                ; 0664 _ 85. C0
        jnz     ?_014                                   ; 0666 _ 75, 31
        mov     edi, 56                                 ; 0668 _ BF, 00000038
        call    malloc                                  ; 066D _ E8, 00000000(PLT r)
        mov     qword [rbp-8H], rax                     ; 0672 _ 48: 89. 45, F8
        mov     rax, qword [rbp-8H]                     ; 0676 _ 48: 8B. 45, F8
        mov     dword [rax], 1                          ; 067A _ C7. 00, 00000001
        mov     rax, qword [rbp-8H]                     ; 0680 _ 48: 8B. 45, F8
        mov     rax, qword [rax+8H]                     ; 0684 _ 48: 8B. 40, 08
        mov     rdx, qword [rbp-38H]                    ; 0688 _ 48: 8B. 55, C8
        mov     rsi, rdx                                ; 068C _ 48: 89. D6
        mov     rdi, rax                                ; 068F _ 48: 89. C7
        call    CartoonIn                               ; 0692 _ E8, 00000000(PLT r)
        jmp     ?_016                                   ; 0697 _ EB, 6A

?_014:  lea     rax, [rbp-30H]                          ; 0699 _ 48: 8D. 45, D0
        lea     rsi, [rel ?_054]                        ; 069D _ 48: 8D. 35, 00000000(rel)
        mov     rdi, rax                                ; 06A4 _ 48: 89. C7
        call    strcmp                                  ; 06A7 _ E8, 00000000(PLT r)
        test    eax, eax                                ; 06AC _ 85. C0
        jnz     ?_015                                   ; 06AE _ 75, 31
        mov     edi, 52                                 ; 06B0 _ BF, 00000034
        call    malloc                                  ; 06B5 _ E8, 00000000(PLT r)
        mov     qword [rbp-8H], rax                     ; 06BA _ 48: 89. 45, F8
        mov     rax, qword [rbp-8H]                     ; 06BE _ 48: 8B. 45, F8
        mov     dword [rax], 2                          ; 06C2 _ C7. 00, 00000002
        mov     rax, qword [rbp-8H]                     ; 06C8 _ 48: 8B. 45, F8
        mov     rax, qword [rax+8H]                     ; 06CC _ 48: 8B. 40, 08
        mov     rdx, qword [rbp-38H]                    ; 06D0 _ 48: 8B. 55, C8
        mov     rsi, rdx                                ; 06D4 _ 48: 89. D6
        mov     rdi, rax                                ; 06D7 _ 48: 89. C7
        call    DocumentaryIn                           ; 06DA _ E8, 00000000(PLT r)
        jmp     ?_016                                   ; 06DF _ EB, 22

?_015:  lea     rax, [rbp-30H]                          ; 06E1 _ 48: 8D. 45, D0
        mov     rsi, rax                                ; 06E5 _ 48: 89. C6
        lea     rdi, [rel ?_055]                        ; 06E8 _ 48: 8D. 3D, 00000000(rel)
        mov     eax, 0                                  ; 06EF _ B8, 00000000
        call    printf                                  ; 06F4 _ E8, 00000000(PLT r)
        mov     edi, 1                                  ; 06F9 _ BF, 00000001
        call    exit                                    ; 06FE _ E8, 00000000(PLT r)
?_016:  mov     rax, qword [rbp-8H]                     ; 0703 _ 48: 8B. 45, F8
        leave                                           ; 0707 _ C9
        ret                                             ; 0708 _ C3
; MovieIn End of function

MovieInRnd:; Function begin
        push    rbp                                     ; 070D _ 55
        mov     rbp, rsp                                ; 070E _ 48: 89. E5
        sub     rsp, 16                                 ; 0711 _ 48: 83. EC, 10
        mov     edi, 16                                 ; 0715 _ BF, 00000010
        call    malloc                                  ; 071A _ E8, 00000000(PLT r)
        mov     qword [rbp-8H], rax                     ; 071F _ 48: 89. 45, F8
        call    rand                                    ; 0723 _ E8, 00000000(PLT r)
        mov     edx, eax                                ; 0728 _ 89. C2
        movsxd  rax, edx                                ; 072A _ 48: 63. C2
        imul    rax, rax, 1431655766                    ; 072D _ 48: 69. C0, 55555556
        shr     rax, 32                                 ; 0734 _ 48: C1. E8, 20
        mov     rcx, rax                                ; 0738 _ 48: 89. C1
        mov     eax, edx                                ; 073B _ 89. D0
        sar     eax, 31                                 ; 073D _ C1. F8, 1F
        mov     esi, ecx                                ; 0740 _ 89. CE
        sub     esi, eax                                ; 0742 _ 29. C6
        mov     eax, esi                                ; 0744 _ 89. F0
        mov     dword [rbp-0CH], eax                    ; 0746 _ 89. 45, F4
        mov     ecx, dword [rbp-0CH]                    ; 0749 _ 8B. 4D, F4
        mov     eax, ecx                                ; 074C _ 89. C8
        add     eax, eax                                ; 074E _ 01. C0
        add     eax, ecx                                ; 0750 _ 01. C8
        sub     edx, eax                                ; 0752 _ 29. C2
        mov     eax, edx                                ; 0754 _ 89. D0
        mov     dword [rbp-0CH], eax                    ; 0756 _ 89. 45, F4
        cmp     dword [rbp-0CH], 0                      ; 0759 _ 83. 7D, F4, 00
        jnz     ?_017                                   ; 075D _ 75, 31
        mov     rax, qword [rbp-8H]                     ; 075F _ 48: 8B. 45, F8
        mov     dword [rax], 0                          ; 0763 _ C7. 00, 00000000
        mov     edi, 104                                ; 0769 _ BF, 00000068
        call    malloc                                  ; 076E _ E8, 00000000(PLT r)
        mov     rdx, rax                                ; 0773 _ 48: 89. C2
        mov     rax, qword [rbp-8H]                     ; 0776 _ 48: 8B. 45, F8
        mov     qword [rax+8H], rdx                     ; 077A _ 48: 89. 50, 08
        mov     rax, qword [rbp-8H]                     ; 077E _ 48: 8B. 45, F8
        mov     rax, qword [rax+8H]                     ; 0782 _ 48: 8B. 40, 08
        mov     rdi, rax                                ; 0786 _ 48: 89. C7
        call    GameMovieInRnd                          ; 0789 _ E8, 00000000(PLT r)
        jmp     ?_019                                   ; 078E _ EB, 66

?_017:  cmp     dword [rbp-0CH], 1                      ; 0790 _ 83. 7D, F4, 01
        jnz     ?_018                                   ; 0794 _ 75, 31
        mov     rax, qword [rbp-8H]                     ; 0796 _ 48: 8B. 45, F8
        mov     dword [rax], 1                          ; 079A _ C7. 00, 00000001
        mov     edi, 56                                 ; 07A0 _ BF, 00000038
        call    malloc                                  ; 07A5 _ E8, 00000000(PLT r)
        mov     rdx, rax                                ; 07AA _ 48: 89. C2
        mov     rax, qword [rbp-8H]                     ; 07AD _ 48: 8B. 45, F8
        mov     qword [rax+8H], rdx                     ; 07B1 _ 48: 89. 50, 08
        mov     rax, qword [rbp-8H]                     ; 07B5 _ 48: 8B. 45, F8
        mov     rax, qword [rax+8H]                     ; 07B9 _ 48: 8B. 40, 08
        mov     rdi, rax                                ; 07BD _ 48: 89. C7
        call    CartoonInRnd                            ; 07C0 _ E8, 00000000(PLT r)
        jmp     ?_019                                   ; 07C5 _ EB, 2F

?_018:  mov     rax, qword [rbp-8H]                     ; 07C7 _ 48: 8B. 45, F8
        mov     dword [rax], 2                          ; 07CB _ C7. 00, 00000002
        mov     edi, 52                                 ; 07D1 _ BF, 00000034
        call    malloc                                  ; 07D6 _ E8, 00000000(PLT r)
        mov     rdx, rax                                ; 07DB _ 48: 89. C2
        mov     rax, qword [rbp-8H]                     ; 07DE _ 48: 8B. 45, F8
        mov     qword [rax+8H], rdx                     ; 07E2 _ 48: 89. 50, 08
        mov     rax, qword [rbp-8H]                     ; 07E6 _ 48: 8B. 45, F8
        mov     rax, qword [rax+8H]                     ; 07EA _ 48: 8B. 40, 08
        mov     rdi, rax                                ; 07EE _ 48: 89. C7
        call    DocumentaryInRnd                        ; 07F1 _ E8, 00000000(PLT r)
?_019:  mov     rax, qword [rbp-8H]                     ; 07F6 _ 48: 8B. 45, F8
        leave                                           ; 07FA _ C9
        ret                                             ; 07FB _ C3
; MovieInRnd End of function

MovieOut:; Function begin
        push    rbp                                     ; 0800 _ 55
        mov     rbp, rsp                                ; 0801 _ 48: 89. E5
        sub     rsp, 16                                 ; 0804 _ 48: 83. EC, 10
        mov     qword [rbp-8H], rdi                     ; 0808 _ 48: 89. 7D, F8
        mov     qword [rbp-10H], rsi                    ; 080C _ 48: 89. 75, F0
        mov     rax, qword [rbp-8H]                     ; 0810 _ 48: 8B. 45, F8
        mov     eax, dword [rax]                        ; 0814 _ 8B. 00
        cmp     eax, 2                                  ; 0816 _ 83. F8, 02
        jz      ?_022                                   ; 0819 _ 74, 42
        cmp     eax, 2                                  ; 081B _ 83. F8, 02
        jg      ?_023                                   ; 081E _ 7F, 56
        test    eax, eax                                ; 0820 _ 85. C0
        jz      ?_020                                   ; 0822 _ 74, 07
        cmp     eax, 1                                  ; 0824 _ 83. F8, 01
        jz      ?_021                                   ; 0827 _ 74, 1B
        jmp     ?_023                                   ; 0829 _ EB, 4B

?_020:  mov     rax, qword [rbp-8H]                     ; 082B _ 48: 8B. 45, F8
        mov     rax, qword [rax+8H]                     ; 082F _ 48: 8B. 40, 08
        mov     rdx, qword [rbp-10H]                    ; 0833 _ 48: 8B. 55, F0
        mov     rsi, rdx                                ; 0837 _ 48: 89. D6
        mov     rdi, rax                                ; 083A _ 48: 89. C7
        call    GameMovieOut                            ; 083D _ E8, 00000000(PLT r)
        jmp     ?_024                                   ; 0842 _ EB, 50

?_021:  mov     rax, qword [rbp-8H]                     ; 0844 _ 48: 8B. 45, F8
        mov     rax, qword [rax+8H]                     ; 0848 _ 48: 8B. 40, 08
        mov     rdx, qword [rbp-10H]                    ; 084C _ 48: 8B. 55, F0
        mov     rsi, rdx                                ; 0850 _ 48: 89. D6
        mov     rdi, rax                                ; 0853 _ 48: 89. C7
        call    CartoonOut                              ; 0856 _ E8, 00000000(PLT r)
        jmp     ?_024                                   ; 085B _ EB, 37

?_022:  mov     rax, qword [rbp-8H]                     ; 085D _ 48: 8B. 45, F8
        mov     rax, qword [rax+8H]                     ; 0861 _ 48: 8B. 40, 08
        mov     rdx, qword [rbp-10H]                    ; 0865 _ 48: 8B. 55, F0
        mov     rsi, rdx                                ; 0869 _ 48: 89. D6
        mov     rdi, rax                                ; 086C _ 48: 89. C7
        call    DocumentaryOut                          ; 086F _ E8, 00000000(PLT r)
        jmp     ?_024                                   ; 0874 _ EB, 1E

?_023:  mov     rax, qword [rbp-10H]                    ; 0876 _ 48: 8B. 45, F0
        mov     rcx, rax                                ; 087A _ 48: 89. C1
        mov     edx, 21                                 ; 087D _ BA, 00000015
        mov     esi, 1                                  ; 0882 _ BE, 00000001
        lea     rdi, [rel ?_056]                        ; 0887 _ 48: 8D. 3D, 00000000(rel)
        call    fwrite                                  ; 088E _ E8, 00000000(PLT r)
        nop                                             ; 0893 _ 90
?_024:  nop                                             ; 0894 _ 90
        leave                                           ; 0895 _ C9
        ret                                             ; 0896 _ C3
; MovieOut End of function

MovieYearDivName:; Function begin
        push    rbp                                     ; 089B _ 55
        mov     rbp, rsp                                ; 089C _ 48: 89. E5
        sub     rsp, 8                                  ; 089F _ 48: 83. EC, 08
        mov     qword [rbp-8H], rdi                     ; 08A3 _ 48: 89. 7D, F8
        mov     rax, qword [rbp-8H]                     ; 08A7 _ 48: 8B. 45, F8
        mov     eax, dword [rax]                        ; 08AB _ 8B. 00
        test    eax, eax                                ; 08AD _ 85. C0
        jnz     ?_025                                   ; 08AF _ 75, 12
        mov     rax, qword [rbp-8H]                     ; 08B1 _ 48: 8B. 45, F8
        mov     rax, qword [rax+8H]                     ; 08B5 _ 48: 8B. 40, 08
        mov     rdi, rax                                ; 08B9 _ 48: 89. C7
        call    GameMovieYearDivName                    ; 08BC _ E8, 00000000(PLT r)
        jmp     ?_027                                   ; 08C1 _ EB, 2D

?_025:  mov     rax, qword [rbp-8H]                     ; 08C3 _ 48: 8B. 45, F8
        mov     eax, dword [rax]                        ; 08C7 _ 8B. 00
        cmp     eax, 1                                  ; 08C9 _ 83. F8, 01
        jnz     ?_026                                   ; 08CC _ 75, 12
        mov     rax, qword [rbp-8H]                     ; 08CE _ 48: 8B. 45, F8
        mov     rax, qword [rax+8H]                     ; 08D2 _ 48: 8B. 40, 08
        mov     rdi, rax                                ; 08D6 _ 48: 89. C7
        call    CartoonYearDivName                      ; 08D9 _ E8, 00000000(PLT r)
        jmp     ?_027                                   ; 08DE _ EB, 10

?_026:  mov     rax, qword [rbp-8H]                     ; 08E0 _ 48: 8B. 45, F8
        mov     rax, qword [rax+8H]                     ; 08E4 _ 48: 8B. 40, 08
        mov     rdi, rax                                ; 08E8 _ 48: 89. C7
        call    DocumentaryDivName                      ; 08EB _ E8, 00000000(PLT r)
?_027:  leave                                           ; 08F0 _ C9
        ret                                             ; 08F1 _ C3
; MovieYearDivName End of function

Init:   ; Function begin
        push    rbp                                     ; 08F6 _ 55
        mov     rbp, rsp                                ; 08F7 _ 48: 89. E5
        mov     qword [rbp-8H], rdi                     ; 08FA _ 48: 89. 7D, F8
        mov     rax, qword [rbp-8H]                     ; 08FE _ 48: 8B. 45, F8
        mov     dword [rax], 0                          ; 0902 _ C7. 00, 00000000
        nop                                             ; 0908 _ 90
        pop     rbp                                     ; 0909 _ 5D
        ret                                             ; 090A _ C3
; Init End of function

Clear:  ; Function begin
        push    rbp                                     ; 090F _ 55
        mov     rbp, rsp                                ; 0910 _ 48: 89. E5
        sub     rsp, 32                                 ; 0913 _ 48: 83. EC, 20
        mov     qword [rbp-18H], rdi                    ; 0917 _ 48: 89. 7D, E8
        mov     dword [rbp-4H], 0                       ; 091B _ C7. 45, FC, 00000000
        jmp     ?_029                                   ; 0922 _ EB, 1A

?_028:  mov     rax, qword [rbp-18H]                    ; 0924 _ 48: 8B. 45, E8
        mov     edx, dword [rbp-4H]                     ; 0928 _ 8B. 55, FC
        movsxd  rdx, edx                                ; 092B _ 48: 63. D2
        mov     rax, qword [rax+rdx*8+8H]               ; 092E _ 48: 8B. 44 D0, 08
        mov     rdi, rax                                ; 0933 _ 48: 89. C7
        call    free                                    ; 0936 _ E8, 00000000(PLT r)
        inc     dword [rbp-4H]                          ; 093B _ FF. 45, FC
?_029:  mov     rax, qword [rbp-18H]                    ; 093E _ 48: 8B. 45, E8
        mov     eax, dword [rax]                        ; 0942 _ 8B. 00
        cmp     dword [rbp-4H], eax                     ; 0944 _ 39. 45, FC
        jl      ?_028                                   ; 0947 _ 7C, DB
        mov     rax, qword [rbp-18H]                    ; 0949 _ 48: 8B. 45, E8
        mov     dword [rax], 0                          ; 094D _ C7. 00, 00000000
        nop                                             ; 0953 _ 90
        leave                                           ; 0954 _ C9
        ret                                             ; 0955 _ C3
; Clear End of function

ContainerIn:; Function begin
        push    rbp                                     ; 095A _ 55
        mov     rbp, rsp                                ; 095B _ 48: 89. E5
        push    rbx                                     ; 095E _ 53
        sub     rsp, 24                                 ; 095F _ 48: 83. EC, 18
        mov     qword [rbp-18H], rdi                    ; 0963 _ 48: 89. 7D, E8
        mov     qword [rbp-20H], rsi                    ; 0967 _ 48: 89. 75, E0
        jmp     ?_031                                   ; 096B _ EB, 3E

?_030:  mov     rax, qword [rbp-18H]                    ; 096D _ 48: 8B. 45, E8
        mov     ebx, dword [rax]                        ; 0971 _ 8B. 18
        mov     rax, qword [rbp-20H]                    ; 0973 _ 48: 8B. 45, E0
        mov     rdi, rax                                ; 0977 _ 48: 89. C7
        call    MovieIn                                 ; 097A _ E8, 00000000(PLT r)
        mov     rdx, qword [rbp-18H]                    ; 097F _ 48: 8B. 55, E8
        movsxd  rcx, ebx                                ; 0983 _ 48: 63. CB
        mov     qword [rdx+rcx*8+8H], rax               ; 0986 _ 48: 89. 44 CA, 08
        mov     rax, qword [rbp-18H]                    ; 098B _ 48: 8B. 45, E8
        movsxd  rdx, ebx                                ; 098F _ 48: 63. D3
        mov     rax, qword [rax+rdx*8+8H]               ; 0992 _ 48: 8B. 44 D0, 08
        test    rax, rax                                ; 0997 _ 48: 85. C0
        jz      ?_031                                   ; 099A _ 74, 0F
        mov     rax, qword [rbp-18H]                    ; 099C _ 48: 8B. 45, E8
        mov     eax, dword [rax]                        ; 09A0 _ 8B. 00
        lea     edx, [rax+1H]                           ; 09A2 _ 8D. 50, 01
        mov     rax, qword [rbp-18H]                    ; 09A5 _ 48: 8B. 45, E8
        mov     dword [rax], edx                        ; 09A9 _ 89. 10
?_031:  mov     rax, qword [rbp-20H]                    ; 09AB _ 48: 8B. 45, E0
        mov     rdi, rax                                ; 09AF _ 48: 89. C7
        call    feof                                    ; 09B2 _ E8, 00000000(PLT r)
        test    eax, eax                                ; 09B7 _ 85. C0
        jz      ?_030                                   ; 09B9 _ 74, B2
        nop                                             ; 09BB _ 90
        nop                                             ; 09BC _ 90
        add     rsp, 24                                 ; 09BD _ 48: 83. C4, 18
        pop     rbx                                     ; 09C1 _ 5B
        pop     rbp                                     ; 09C2 _ 5D
        ret                                             ; 09C3 _ C3
; ContainerIn End of function

ContainerInRnd:; Function begin
        push    rbp                                     ; 09C8 _ 55
        mov     rbp, rsp                                ; 09C9 _ 48: 89. E5
        push    rbx                                     ; 09CC _ 53
        sub     rsp, 24                                 ; 09CD _ 48: 83. EC, 18
        mov     qword [rbp-18H], rdi                    ; 09D1 _ 48: 89. 7D, E8
        mov     dword [rbp-1CH], esi                    ; 09D5 _ 89. 75, E4
        jmp     ?_033                                   ; 09D8 _ EB, 3C

?_032:  mov     rax, qword [rbp-18H]                    ; 09DA _ 48: 8B. 45, E8
        mov     ebx, dword [rax]                        ; 09DE _ 8B. 18
        mov     eax, 0                                  ; 09E0 _ B8, 00000000
        call    MovieInRnd                              ; 09E5 _ E8, 00000000(PLT r)
        mov     rdx, qword [rbp-18H]                    ; 09EA _ 48: 8B. 55, E8
        movsxd  rcx, ebx                                ; 09EE _ 48: 63. CB
        mov     qword [rdx+rcx*8+8H], rax               ; 09F1 _ 48: 89. 44 CA, 08
        mov     rax, qword [rbp-18H]                    ; 09F6 _ 48: 8B. 45, E8
        movsxd  rdx, ebx                                ; 09FA _ 48: 63. D3
        mov     rax, qword [rax+rdx*8+8H]               ; 09FD _ 48: 8B. 44 D0, 08
        test    rax, rax                                ; 0A02 _ 48: 85. C0
        jz      ?_033                                   ; 0A05 _ 74, 0F
        mov     rax, qword [rbp-18H]                    ; 0A07 _ 48: 8B. 45, E8
        mov     eax, dword [rax]                        ; 0A0B _ 8B. 00
        lea     edx, [rax+1H]                           ; 0A0D _ 8D. 50, 01
        mov     rax, qword [rbp-18H]                    ; 0A10 _ 48: 8B. 45, E8
        mov     dword [rax], edx                        ; 0A14 _ 89. 10
?_033:  mov     rax, qword [rbp-18H]                    ; 0A16 _ 48: 8B. 45, E8
        mov     eax, dword [rax]                        ; 0A1A _ 8B. 00
        cmp     dword [rbp-1CH], eax                    ; 0A1C _ 39. 45, E4
        jg      ?_032                                   ; 0A1F _ 7F, B9
        nop                                             ; 0A21 _ 90
        nop                                             ; 0A22 _ 90
        add     rsp, 24                                 ; 0A23 _ 48: 83. C4, 18
        pop     rbx                                     ; 0A27 _ 5B
        pop     rbp                                     ; 0A28 _ 5D
        ret                                             ; 0A29 _ C3
; ContainerInRnd End of function

ContainerOut:; Function begin
        push    rbp                                     ; 0A2E _ 55
        mov     rbp, rsp                                ; 0A2F _ 48: 89. E5
        sub     rsp, 32                                 ; 0A32 _ 48: 83. EC, 20
        mov     qword [rbp-18H], rdi                    ; 0A36 _ 48: 89. 7D, E8
        mov     qword [rbp-20H], rsi                    ; 0A3A _ 48: 89. 75, E0
        mov     rax, qword [rbp-18H]                    ; 0A3E _ 48: 8B. 45, E8
        mov     edx, dword [rax]                        ; 0A42 _ 8B. 10
        mov     rax, qword [rbp-20H]                    ; 0A44 _ 48: 8B. 45, E0
        lea     rsi, [rel ?_057]                        ; 0A48 _ 48: 8D. 35, 00000000(rel)
        mov     rdi, rax                                ; 0A4F _ 48: 89. C7
        mov     eax, 0                                  ; 0A52 _ B8, 00000000
        call    fprintf                                 ; 0A57 _ E8, 00000000(PLT r)
        mov     dword [rbp-4H], 0                       ; 0A5C _ C7. 45, FC, 00000000
        jmp     ?_035                                   ; 0A63 _ EB, 21

?_034:  mov     rax, qword [rbp-18H]                    ; 0A65 _ 48: 8B. 45, E8
        mov     edx, dword [rbp-4H]                     ; 0A69 _ 8B. 55, FC
        movsxd  rdx, edx                                ; 0A6C _ 48: 63. D2
        mov     rax, qword [rax+rdx*8+8H]               ; 0A6F _ 48: 8B. 44 D0, 08
        mov     rdx, qword [rbp-20H]                    ; 0A74 _ 48: 8B. 55, E0
        mov     rsi, rdx                                ; 0A78 _ 48: 89. D6
        mov     rdi, rax                                ; 0A7B _ 48: 89. C7
        call    MovieOut                                ; 0A7E _ E8, 00000000(PLT r)
        inc     dword [rbp-4H]                          ; 0A83 _ FF. 45, FC
?_035:  mov     rax, qword [rbp-18H]                    ; 0A86 _ 48: 8B. 45, E8
        mov     eax, dword [rax]                        ; 0A8A _ 8B. 00
        cmp     dword [rbp-4H], eax                     ; 0A8C _ 39. 45, FC
        jl      ?_034                                   ; 0A8F _ 7C, D4
        nop                                             ; 0A91 _ 90
        nop                                             ; 0A92 _ 90
        leave                                           ; 0A93 _ C9
        ret                                             ; 0A94 _ C3
; ContainerOut End of function

swap:   ; Function begin
        push    rbp                                     ; 0A99 _ 55
        mov     rbp, rsp                                ; 0A9A _ 48: 89. E5
        mov     qword [rbp-18H], rdi                    ; 0A9D _ 48: 89. 7D, E8
        mov     qword [rbp-20H], rsi                    ; 0AA1 _ 48: 89. 75, E0
        mov     rax, qword [rbp-18H]                    ; 0AA5 _ 48: 8B. 45, E8
        mov     rdx, qword [rax+8H]                     ; 0AA9 _ 48: 8B. 50, 08
        mov     rax, qword [rax]                        ; 0AAD _ 48: 8B. 00
        mov     qword [rbp-10H], rax                    ; 0AB0 _ 48: 89. 45, F0
        mov     qword [rbp-8H], rdx                     ; 0AB4 _ 48: 89. 55, F8
        mov     rcx, qword [rbp-18H]                    ; 0AB8 _ 48: 8B. 4D, E8
        mov     rax, qword [rbp-20H]                    ; 0ABC _ 48: 8B. 45, E0
        mov     rdx, qword [rax+8H]                     ; 0AC0 _ 48: 8B. 50, 08
        mov     rax, qword [rax]                        ; 0AC4 _ 48: 8B. 00
        mov     qword [rcx], rax                        ; 0AC7 _ 48: 89. 01
        mov     qword [rcx+8H], rdx                     ; 0ACA _ 48: 89. 51, 08
        mov     rcx, qword [rbp-20H]                    ; 0ACE _ 48: 8B. 4D, E0
        mov     rax, qword [rbp-10H]                    ; 0AD2 _ 48: 8B. 45, F0
        mov     rdx, qword [rbp-8H]                     ; 0AD6 _ 48: 8B. 55, F8
        mov     qword [rcx], rax                        ; 0ADA _ 48: 89. 01
        mov     qword [rcx+8H], rdx                     ; 0ADD _ 48: 89. 51, 08
        nop                                             ; 0AE1 _ 90
        pop     rbp                                     ; 0AE2 _ 5D
        ret                                             ; 0AE3 _ C3
; swap End of function

Partition:; Function begin
        push    rbp                                     ; 0AE8 _ 55
        mov     rbp, rsp                                ; 0AE9 _ 48: 89. E5
        sub     rsp, 40                                 ; 0AEC _ 48: 83. EC, 28
        mov     qword [rbp-18H], rdi                    ; 0AF0 _ 48: 89. 7D, E8
        mov     dword [rbp-1CH], esi                    ; 0AF4 _ 89. 75, E4
        mov     dword [rbp-20H], edx                    ; 0AF7 _ 89. 55, E0
        mov     eax, dword [rbp-20H]                    ; 0AFA _ 8B. 45, E0
        mov     dword [rbp-0CH], eax                    ; 0AFD _ 89. 45, F4
        mov     eax, dword [rbp-1CH]                    ; 0B00 _ 8B. 45, E4
        dec     eax                                     ; 0B03 _ FF. C8
        mov     dword [rbp-4H], eax                     ; 0B05 _ 89. 45, FC
        mov     eax, dword [rbp-1CH]                    ; 0B08 _ 8B. 45, E4
        mov     dword [rbp-8H], eax                     ; 0B0B _ 89. 45, F8
        jmp     ?_038                                   ; 0B0E _ EB, 69

?_036:  mov     rax, qword [rbp-18H]                    ; 0B10 _ 48: 8B. 45, E8
        mov     edx, dword [rbp-8H]                     ; 0B14 _ 8B. 55, F8
        movsxd  rdx, edx                                ; 0B17 _ 48: 63. D2
        mov     rax, qword [rax+rdx*8+8H]               ; 0B1A _ 48: 8B. 44 D0, 08
        mov     rdi, rax                                ; 0B1F _ 48: 89. C7
        call    MovieYearDivName                        ; 0B22 _ E8, 00000000(PLT r)
        vmovsd  qword [rbp-28H], xmm0                   ; 0B27 _ C5 FB: 11. 45, D8
        mov     rax, qword [rbp-18H]                    ; 0B2C _ 48: 8B. 45, E8
        mov     edx, dword [rbp-0CH]                    ; 0B30 _ 8B. 55, F4
        movsxd  rdx, edx                                ; 0B33 _ 48: 63. D2
        mov     rax, qword [rax+rdx*8+8H]               ; 0B36 _ 48: 8B. 44 D0, 08
        mov     rdi, rax                                ; 0B3B _ 48: 89. C7
        call    MovieYearDivName                        ; 0B3E _ E8, 00000000(PLT r)
        vcomisd xmm0, qword [rbp-28H]                   ; 0B43 _ C5 F9: 2F. 45, D8
        jbe     ?_037                                   ; 0B48 _ 76, 2C
        inc     dword [rbp-4H]                          ; 0B4A _ FF. 45, FC
        mov     rax, qword [rbp-18H]                    ; 0B4D _ 48: 8B. 45, E8
        mov     edx, dword [rbp-8H]                     ; 0B51 _ 8B. 55, F8
        movsxd  rdx, edx                                ; 0B54 _ 48: 63. D2
        mov     rdx, qword [rax+rdx*8+8H]               ; 0B57 _ 48: 8B. 54 D0, 08
        mov     rax, qword [rbp-18H]                    ; 0B5C _ 48: 8B. 45, E8
        mov     ecx, dword [rbp-4H]                     ; 0B60 _ 8B. 4D, FC
        movsxd  rcx, ecx                                ; 0B63 _ 48: 63. C9
        mov     rax, qword [rax+rcx*8+8H]               ; 0B66 _ 48: 8B. 44 C8, 08
        mov     rsi, rdx                                ; 0B6B _ 48: 89. D6
        mov     rdi, rax                                ; 0B6E _ 48: 89. C7
        call    swap                                    ; 0B71 _ E8, 00000000(PLT r)
?_037:  inc     dword [rbp-8H]                          ; 0B76 _ FF. 45, F8
?_038:  mov     eax, dword [rbp-20H]                    ; 0B79 _ 8B. 45, E0
        cmp     eax, dword [rbp-8H]                     ; 0B7C _ 3B. 45, F8
        jg      ?_036                                   ; 0B7F _ 7F, 8F
        mov     rax, qword [rbp-18H]                    ; 0B81 _ 48: 8B. 45, E8
        mov     edx, dword [rbp-20H]                    ; 0B85 _ 8B. 55, E0
        movsxd  rdx, edx                                ; 0B88 _ 48: 63. D2
        mov     rdx, qword [rax+rdx*8+8H]               ; 0B8B _ 48: 8B. 54 D0, 08
        mov     eax, dword [rbp-4H]                     ; 0B90 _ 8B. 45, FC
        lea     ecx, [rax+1H]                           ; 0B93 _ 8D. 48, 01
        mov     rax, qword [rbp-18H]                    ; 0B96 _ 48: 8B. 45, E8
        movsxd  rcx, ecx                                ; 0B9A _ 48: 63. C9
        mov     rax, qword [rax+rcx*8+8H]               ; 0B9D _ 48: 8B. 44 C8, 08
        mov     rsi, rdx                                ; 0BA2 _ 48: 89. D6
        mov     rdi, rax                                ; 0BA5 _ 48: 89. C7
        call    swap                                    ; 0BA8 _ E8, 00000000(PLT r)
        mov     eax, dword [rbp-4H]                     ; 0BAD _ 8B. 45, FC
        inc     eax                                     ; 0BB0 _ FF. C0
        leave                                           ; 0BB2 _ C9
        ret                                             ; 0BB3 _ C3
; Partition End of function

QuickSort:; Function begin
        push    rbp                                     ; 0BB8 _ 55
        mov     rbp, rsp                                ; 0BB9 _ 48: 89. E5
        sub     rsp, 32                                 ; 0BBC _ 48: 83. EC, 20
        mov     qword [rbp-18H], rdi                    ; 0BC0 _ 48: 89. 7D, E8
        mov     dword [rbp-1CH], esi                    ; 0BC4 _ 89. 75, E4
        mov     dword [rbp-20H], edx                    ; 0BC7 _ 89. 55, E0
        mov     eax, dword [rbp-1CH]                    ; 0BCA _ 8B. 45, E4
        cmp     eax, dword [rbp-20H]                    ; 0BCD _ 3B. 45, E0
        jge     ?_039                                   ; 0BD0 _ 7D, 45
        mov     edx, dword [rbp-20H]                    ; 0BD2 _ 8B. 55, E0
        mov     ecx, dword [rbp-1CH]                    ; 0BD5 _ 8B. 4D, E4
        mov     rax, qword [rbp-18H]                    ; 0BD8 _ 48: 8B. 45, E8
        mov     esi, ecx                                ; 0BDC _ 89. CE
        mov     rdi, rax                                ; 0BDE _ 48: 89. C7
        call    Partition                               ; 0BE1 _ E8, 00000000(PLT r)
        mov     dword [rbp-4H], eax                     ; 0BE6 _ 89. 45, FC
        mov     eax, dword [rbp-4H]                     ; 0BE9 _ 8B. 45, FC
        lea     edx, [rax-1H]                           ; 0BEC _ 8D. 50, FF
        mov     ecx, dword [rbp-1CH]                    ; 0BEF _ 8B. 4D, E4
        mov     rax, qword [rbp-18H]                    ; 0BF2 _ 48: 8B. 45, E8
        mov     esi, ecx                                ; 0BF6 _ 89. CE
        mov     rdi, rax                                ; 0BF8 _ 48: 89. C7
        call    QuickSort                               ; 0BFB _ E8, 00000000(PLT r)
        mov     eax, dword [rbp-4H]                     ; 0C00 _ 8B. 45, FC
        lea     ecx, [rax+1H]                           ; 0C03 _ 8D. 48, 01
        mov     edx, dword [rbp-20H]                    ; 0C06 _ 8B. 55, E0
        mov     rax, qword [rbp-18H]                    ; 0C09 _ 48: 8B. 45, E8
        mov     esi, ecx                                ; 0C0D _ 89. CE
        mov     rdi, rax                                ; 0C0F _ 48: 89. C7
        call    QuickSort                               ; 0C12 _ E8, 00000000(PLT r)
?_039:  nop                                             ; 0C17 _ 90
        leave                                           ; 0C18 _ C9
        ret                                             ; 0C19 _ C3
; QuickSort End of function

errMessage1:; Function begin
        push    rbp                                     ; 0C1E _ 55
        mov     rbp, rsp                                ; 0C1F _ 48: 89. E5
        lea     rdi, [rel ?_058]                        ; 0C22 _ 48: 8D. 3D, 00000000(rel)
        call    puts                                    ; 0C29 _ E8, 00000000(PLT r)
        nop                                             ; 0C2E _ 90
        pop     rbp                                     ; 0C2F _ 5D
        ret                                             ; 0C30 _ C3
; errMessage1 End of function

errMessage2:; Function begin
        push    rbp                                     ; 0C35 _ 55
        mov     rbp, rsp                                ; 0C36 _ 48: 89. E5
        lea     rdi, [rel ?_059]                        ; 0C39 _ 48: 8D. 3D, 00000000(rel)
        call    puts                                    ; 0C40 _ E8, 00000000(PLT r)
        nop                                             ; 0C45 _ 90
        pop     rbp                                     ; 0C46 _ 5D
        ret                                             ; 0C47 _ C3
; errMessage2 End of function

main:   ; Function begin
        push    rbp                                     ; 0C4C _ 55
        mov     rbp, rsp                                ; 0C4D _ 48: 89. E5
        lea     r11, [rsp-13000H]                       ; 0C50 _ 4C: 8D. 9C 24, FFFED000
?_040:  sub     rsp, 4096                               ; 0C58 _ 48: 81. EC, 00001000
        or      dword [rsp], 00H                        ; 0C5F _ 83. 0C 24, 00
        cmp     rsp, r11                                ; 0C63 _ 4C: 39. DC
        jnz     ?_040                                   ; 0C66 _ 75, F0
        sub     rsp, 2256                               ; 0C68 _ 48: 81. EC, 000008D0
        mov     dword [rbp-138C4H], edi                 ; 0C6F _ 89. BD, FFFEC73C
        mov     qword [rbp-138D0H], rsi                 ; 0C75 _ 48: 89. B5, FFFEC730
        cmp     dword [rbp-138C4H], 5                   ; 0C7C _ 83. BD, FFFEC73C, 05
        jz      ?_041                                   ; 0C83 _ 74, 14
        mov     eax, 0                                  ; 0C85 _ B8, 00000000
        call    errMessage1                             ; 0C8A _ E8, 00000000(PLT r)
        mov     eax, 1                                  ; 0C8F _ B8, 00000001
        jmp     ?_045                                   ; 0C94 _ E9, 000001E9

?_041:  lea     rdi, [rel ?_060]                        ; 0C99 _ 48: 8D. 3D, 00000000(rel)
        call    puts                                    ; 0CA0 _ E8, 00000000(PLT r)
        lea     rax, [rbp-138B0H]                       ; 0CA5 _ 48: 8D. 85, FFFEC750
        mov     rdi, rax                                ; 0CAC _ 48: 89. C7
        call    Init                                    ; 0CAF _ E8, 00000000(PLT r)
        mov     rax, qword [rbp-138D0H]                 ; 0CB4 _ 48: 8B. 85, FFFEC730
        add     rax, 8                                  ; 0CBB _ 48: 83. C0, 08
        mov     rax, qword [rax]                        ; 0CBF _ 48: 8B. 00
        lea     rsi, [rel ?_061]                        ; 0CC2 _ 48: 8D. 35, 00000000(rel)
        mov     rdi, rax                                ; 0CC9 _ 48: 89. C7
        call    strcmp                                  ; 0CCC _ E8, 00000000(PLT r)
        test    eax, eax                                ; 0CD1 _ 85. C0
        jnz     ?_042                                   ; 0CD3 _ 75, 64
        mov     rax, qword [rbp-138D0H]                 ; 0CD5 _ 48: 8B. 85, FFFEC730
        add     rax, 16                                 ; 0CDC _ 48: 83. C0, 10
        mov     rax, qword [rax]                        ; 0CE0 _ 48: 8B. 00
        lea     rsi, [rel ?_062]                        ; 0CE3 _ 48: 8D. 35, 00000000(rel)
        mov     rdi, rax                                ; 0CEA _ 48: 89. C7
        call    fopen                                   ; 0CED _ E8, 00000000(PLT r)
        mov     qword [rbp-10H], rax                    ; 0CF2 _ 48: 89. 45, F0
        lea     rdx, [rbp-138B4H]                       ; 0CF6 _ 48: 8D. 95, FFFEC74C
        mov     rax, qword [rbp-10H]                    ; 0CFD _ 48: 8B. 45, F0
        lea     rsi, [rel ?_063]                        ; 0D01 _ 48: 8D. 35, 00000000(rel)
        mov     rdi, rax                                ; 0D08 _ 48: 89. C7
        mov     eax, 0                                  ; 0D0B _ B8, 00000000
        call    __isoc99_fscanf                         ; 0D10 _ E8, 00000000(PLT r)
        mov     rdx, qword [rbp-10H]                    ; 0D15 _ 48: 8B. 55, F0
        lea     rax, [rbp-138B0H]                       ; 0D19 _ 48: 8D. 85, FFFEC750
        mov     rsi, rdx                                ; 0D20 _ 48: 89. D6
        mov     rdi, rax                                ; 0D23 _ 48: 89. C7
        call    ContainerIn                             ; 0D26 _ E8, 00000000(PLT r)
        mov     rax, qword [rbp-10H]                    ; 0D2B _ 48: 8B. 45, F0
        mov     rdi, rax                                ; 0D2F _ 48: 89. C7
        call    fclose                                  ; 0D32 _ E8, 00000000(PLT r)
        jmp     ?_044                                   ; 0D37 _ EB, 64

?_042:  mov     rax, qword [rbp-138D0H]                 ; 0D39 _ 48: 8B. 85, FFFEC730
        add     rax, 8                                  ; 0D40 _ 48: 83. C0, 08
        mov     rax, qword [rax]                        ; 0D44 _ 48: 8B. 00
        lea     rsi, [rel ?_064]                        ; 0D47 _ 48: 8D. 35, 00000000(rel)
        mov     rdi, rax                                ; 0D4E _ 48: 89. C7
        call    strcmp                                  ; 0D51 _ E8, 00000000(PLT r)
        test    eax, eax                                ; 0D56 _ 85. C0
        jnz     ?_043                                   ; 0D58 _ 75, 2F
        mov     rax, qword [rbp-138D0H]                 ; 0D5A _ 48: 8B. 85, FFFEC730
        add     rax, 16                                 ; 0D61 _ 48: 83. C0, 10
        mov     rax, qword [rax]                        ; 0D65 _ 48: 8B. 00
        mov     rdi, rax                                ; 0D68 _ 48: 89. C7
        call    atoi                                    ; 0D6B _ E8, 00000000(PLT r)
        mov     dword [rbp-4H], eax                     ; 0D70 _ 89. 45, FC
        mov     edx, dword [rbp-4H]                     ; 0D73 _ 8B. 55, FC
        lea     rax, [rbp-138B0H]                       ; 0D76 _ 48: 8D. 85, FFFEC750
        mov     esi, edx                                ; 0D7D _ 89. D6
        mov     rdi, rax                                ; 0D7F _ 48: 89. C7
        call    ContainerInRnd                          ; 0D82 _ E8, 00000000(PLT r)
        jmp     ?_044                                   ; 0D87 _ EB, 14

?_043:  mov     eax, 0                                  ; 0D89 _ B8, 00000000
        call    errMessage2                             ; 0D8E _ E8, 00000000(PLT r)
        mov     eax, 2                                  ; 0D93 _ B8, 00000002
        jmp     ?_045                                   ; 0D98 _ E9, 000000E5

?_044:  mov     rax, qword [rbp-138D0H]                 ; 0D9D _ 48: 8B. 85, FFFEC730
        add     rax, 24                                 ; 0DA4 _ 48: 83. C0, 18
        mov     rax, qword [rax]                        ; 0DA8 _ 48: 8B. 00
        lea     rsi, [rel ?_065]                        ; 0DAB _ 48: 8D. 35, 00000000(rel)
        mov     rdi, rax                                ; 0DB2 _ 48: 89. C7
        call    fopen                                   ; 0DB5 _ E8, 00000000(PLT r)
        mov     qword [rbp-18H], rax                    ; 0DBA _ 48: 89. 45, E8
        mov     rax, qword [rbp-138D0H]                 ; 0DBE _ 48: 8B. 85, FFFEC730
        add     rax, 32                                 ; 0DC5 _ 48: 83. C0, 20
        mov     rax, qword [rax]                        ; 0DC9 _ 48: 8B. 00
        lea     rsi, [rel ?_065]                        ; 0DCC _ 48: 8D. 35, 00000000(rel)
        mov     rdi, rax                                ; 0DD3 _ 48: 89. C7
        call    fopen                                   ; 0DD6 _ E8, 00000000(PLT r)
        mov     qword [rbp-20H], rax                    ; 0DDB _ 48: 89. 45, E0
        mov     rax, qword [rbp-18H]                    ; 0DDF _ 48: 8B. 45, E8
        mov     rcx, rax                                ; 0DE3 _ 48: 89. C1
        mov     edx, 18                                 ; 0DE6 _ BA, 00000012
        mov     esi, 1                                  ; 0DEB _ BE, 00000001
        lea     rdi, [rel ?_066]                        ; 0DF0 _ 48: 8D. 3D, 00000000(rel)
        call    fwrite                                  ; 0DF7 _ E8, 00000000(PLT r)
        mov     rdx, qword [rbp-18H]                    ; 0DFC _ 48: 8B. 55, E8
        lea     rax, [rbp-138B0H]                       ; 0E00 _ 48: 8D. 85, FFFEC750
        mov     rsi, rdx                                ; 0E07 _ 48: 89. D6
        mov     rdi, rax                                ; 0E0A _ 48: 89. C7
        call    ContainerOut                            ; 0E0D _ E8, 00000000(PLT r)
        mov     eax, dword [rbp-138B0H]                 ; 0E12 _ 8B. 85, FFFEC750
        lea     edx, [rax-1H]                           ; 0E18 _ 8D. 50, FF
        lea     rax, [rbp-138B0H]                       ; 0E1B _ 48: 8D. 85, FFFEC750
        mov     esi, 0                                  ; 0E22 _ BE, 00000000
        mov     rdi, rax                                ; 0E27 _ 48: 89. C7
        call    QuickSort                               ; 0E2A _ E8, 00000000(PLT r)
        mov     rax, qword [rbp-20H]                    ; 0E2F _ 48: 8B. 45, E0
        mov     rcx, rax                                ; 0E33 _ 48: 89. C1
        mov     edx, 18                                 ; 0E36 _ BA, 00000012
        mov     esi, 1                                  ; 0E3B _ BE, 00000001
        lea     rdi, [rel ?_067]                        ; 0E40 _ 48: 8D. 3D, 00000000(rel)
        call    fwrite                                  ; 0E47 _ E8, 00000000(PLT r)
        mov     rdx, qword [rbp-20H]                    ; 0E4C _ 48: 8B. 55, E0
        lea     rax, [rbp-138B0H]                       ; 0E50 _ 48: 8D. 85, FFFEC750
        mov     rsi, rdx                                ; 0E57 _ 48: 89. D6
        mov     rdi, rax                                ; 0E5A _ 48: 89. C7
        call    ContainerOut                            ; 0E5D _ E8, 00000000(PLT r)
        lea     rax, [rbp-138B0H]                       ; 0E62 _ 48: 8D. 85, FFFEC750
        mov     rdi, rax                                ; 0E69 _ 48: 89. C7
        call    Clear                                   ; 0E6C _ E8, 00000000(PLT r)
        lea     rdi, [rel ?_068]                        ; 0E71 _ 48: 8D. 3D, 00000000(rel)
        call    puts                                    ; 0E78 _ E8, 00000000(PLT r)
        mov     eax, 0                                  ; 0E7D _ B8, 00000000
?_045:  leave                                           ; 0E82 _ C9
        ret                                             ; 0E83 _ C3
; main End of function


SECTION .data                           ; section number 2, data


SECTION .bss                            ; section number 3, bss


SECTION .rodata                         ; section number 4, const

?_046:                                                  ; byte
        db 25H, 73H, 20H, 25H, 64H, 20H, 25H, 73H       ; 0000 _ %s %d %s
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0008 _ ........

?_047:                                                  ; byte
        db 5BH, 47H, 61H, 6DH, 65H, 20H, 4DH, 6FH       ; 0010 _ [Game Mo
        db 76H, 69H, 65H, 5DH, 0AH, 2DH, 6EH, 61H       ; 0018 _ vie].-na
        db 6DH, 65H, 20H, 3DH, 20H, 25H, 73H, 0AH       ; 0020 _ me = %s.
        db 2DH, 72H, 65H, 6CH, 65H, 61H, 73H, 65H       ; 0028 _ -release
        db 20H, 79H, 65H, 61H, 72H, 20H, 3DH, 20H       ; 0030 _  year = 
        db 25H, 64H, 0AH, 2DH, 64H, 69H, 72H, 65H       ; 0038 _ %d.-dire
        db 63H, 74H, 6FH, 72H, 20H, 3DH, 20H, 25H       ; 0040 _ ctor = %
        db 73H, 0AH, 2DH, 66H, 75H, 6EH, 63H, 74H       ; 0048 _ s.-funct
        db 69H, 6FH, 6EH, 20H, 72H, 65H, 73H, 75H       ; 0050 _ ion resu
        db 6CH, 74H, 20H, 3DH, 20H, 25H, 6CH, 66H       ; 0058 _ lt = %lf
        db 0AH, 0AH, 00H                                ; 0060 _ ...

?_048:                                                  ; byte
        db 25H, 73H, 20H, 25H, 64H, 20H, 25H, 64H       ; 0063 _ %s %d %d
        db 00H, 00H, 00H, 00H, 00H                      ; 006B _ .....

?_049:                                                  ; byte
        db 5BH, 43H, 61H, 72H, 74H, 6FH, 6FH, 6EH       ; 0070 _ [Cartoon
        db 5DH, 0AH, 2DH, 6EH, 61H, 6DH, 65H, 20H       ; 0078 _ ].-name 
        db 3DH, 20H, 25H, 73H, 0AH, 2DH, 72H, 65H       ; 0080 _ = %s.-re
        db 6CH, 65H, 61H, 73H, 65H, 20H, 79H, 65H       ; 0088 _ lease ye
        db 61H, 72H, 20H, 3DH, 20H, 25H, 64H, 0AH       ; 0090 _ ar = %d.
        db 2DH, 64H, 69H, 72H, 65H, 63H, 74H, 6FH       ; 0098 _ -directo
        db 72H, 20H, 3DH, 20H, 25H, 64H, 0AH, 2DH       ; 00A0 _ r = %d.-
        db 66H, 75H, 6EH, 63H, 74H, 69H, 6FH, 6EH       ; 00A8 _ function
        db 20H, 72H, 65H, 73H, 75H, 6CH, 74H, 20H       ; 00B0 _  result 
        db 3DH, 20H, 25H, 6CH, 66H, 0AH, 0AH, 00H       ; 00B8 _ = %lf...

?_050:                                                  ; byte
        db 5BH, 44H, 6FH, 63H, 75H, 6DH, 65H, 6EH       ; 00C0 _ [Documen
        db 74H, 61H, 72H, 79H, 5DH, 0AH, 2DH, 6EH       ; 00C8 _ tary].-n
        db 61H, 6DH, 65H, 20H, 3DH, 20H, 25H, 73H       ; 00D0 _ ame = %s
        db 0AH, 2DH, 72H, 65H, 6CH, 65H, 61H, 73H       ; 00D8 _ .-releas
        db 65H, 20H, 79H, 65H, 61H, 72H, 20H, 3DH       ; 00E0 _ e year =
        db 20H, 25H, 64H, 0AH, 2DH, 64H, 75H, 72H       ; 00E8 _  %d.-dur
        db 61H, 74H, 69H, 6FH, 6EH, 20H, 3DH, 20H       ; 00F0 _ ation = 
        db 25H, 64H, 0AH, 2DH, 66H, 75H, 6EH, 63H       ; 00F8 _ %d.-func
        db 74H, 69H, 6FH, 6EH, 20H, 72H, 65H, 73H       ; 0100 _ tion res
        db 75H, 6CH, 74H, 20H, 3DH, 20H, 25H, 6CH       ; 0108 _ ult = %l
        db 66H, 0AH, 0AH, 00H                           ; 0110 _ f...

?_051:                                                  ; byte
        db 25H, 73H, 0AH, 00H                           ; 0114 _ %s..

?_052:                                                  ; byte
        db 67H, 61H, 6DH, 65H, 5FH, 6DH, 6FH, 76H       ; 0118 _ game_mov
        db 69H, 65H, 00H                                ; 0120 _ ie.

?_053:                                                  ; byte
        db 63H, 61H, 72H, 74H, 6FH, 6FH, 6EH, 00H       ; 0123 _ cartoon.

?_054:                                                  ; byte
        db 64H, 6FH, 63H, 75H, 6DH, 65H, 6EH, 74H       ; 012B _ document
        db 61H, 72H, 79H, 00H                           ; 0133 _ ary.

?_055:                                                  ; byte
        db 45H, 52H, 52H, 4FH, 52H, 3AH, 20H, 57H       ; 0137 _ ERROR: W
        db 72H, 6FH, 6EH, 67H, 20H, 6DH, 6FH, 76H       ; 013F _ rong mov
        db 69H, 65H, 20H, 74H, 79H, 70H, 65H, 20H       ; 0147 _ ie type 
        db 25H, 73H, 0AH, 00H                           ; 014F _ %s..

?_056:                                                  ; byte
        db 49H, 6EH, 63H, 6FH, 72H, 72H, 65H, 63H       ; 0153 _ Incorrec
        db 74H, 20H, 6DH, 6FH, 76H, 69H, 65H, 20H       ; 015B _ t movie 
        db 74H, 79H, 70H, 65H, 0AH, 00H, 00H, 00H       ; 0163 _ type....
        db 00H, 00H, 00H, 00H, 00H                      ; 016B _ .....

?_057:                                                  ; byte
        db 43H, 6FH, 6EH, 74H, 61H, 69H, 6EH, 65H       ; 0170 _ Containe
        db 72H, 20H, 63H, 6FH, 6EH, 74H, 61H, 69H       ; 0178 _ r contai
        db 6EH, 73H, 20H, 25H, 64H, 20H, 65H, 6CH       ; 0180 _ ns %d el
        db 65H, 6DH, 65H, 6EH, 74H, 73H, 0AH, 00H       ; 0188 _ ements..

?_058:                                                  ; byte
        db 69H, 6EH, 63H, 6FH, 72H, 72H, 65H, 63H       ; 0190 _ incorrec
        db 74H, 20H, 63H, 6FH, 6DH, 6DH, 61H, 6EH       ; 0198 _ t comman
        db 64H, 20H, 6CH, 69H, 6EH, 65H, 21H, 0AH       ; 01A0 _ d line!.
        db 20H, 20H, 57H, 61H, 69H, 74H, 65H, 64H       ; 01A8 _   Waited
        db 3AH, 0AH, 20H, 20H, 20H, 20H, 20H, 63H       ; 01B0 _ :.     c
        db 6FH, 6DH, 6DH, 61H, 6EH, 64H, 20H, 2DH       ; 01B8 _ ommand -
        db 66H, 20H, 69H, 6EH, 66H, 69H, 6CH, 65H       ; 01C0 _ f infile
        db 20H, 6FH, 75H, 74H, 66H, 69H, 6CH, 65H       ; 01C8 _  outfile
        db 30H, 31H, 20H, 6FH, 75H, 74H, 66H, 69H       ; 01D0 _ 01 outfi
        db 6CH, 65H, 30H, 32H, 0AH, 20H, 20H, 4FH       ; 01D8 _ le02.  O
        db 72H, 3AH, 0AH, 20H, 20H, 20H, 20H, 20H       ; 01E0 _ r:.     
        db 63H, 6FH, 6DH, 6DH, 61H, 6EH, 64H, 20H       ; 01E8 _ command 
        db 2DH, 6EH, 20H, 6EH, 75H, 6DH, 62H, 65H       ; 01F0 _ -n numbe
        db 72H, 20H, 6FH, 75H, 74H, 66H, 69H, 6CH       ; 01F8 _ r outfil
        db 65H, 30H, 31H, 20H, 6FH, 75H, 74H, 66H       ; 0200 _ e01 outf
        db 69H, 6CH, 65H, 30H, 32H, 00H, 00H, 00H       ; 0208 _ ile02...

?_059:                                                  ; byte
        db 69H, 6EH, 63H, 6FH, 72H, 72H, 65H, 63H       ; 0210 _ incorrec
        db 74H, 20H, 71H, 75H, 61H, 6CH, 69H, 66H       ; 0218 _ t qualif
        db 69H, 65H, 72H, 20H, 76H, 61H, 6CH, 75H       ; 0220 _ ier valu
        db 65H, 21H, 0AH, 20H, 20H, 57H, 61H, 69H       ; 0228 _ e!.  Wai
        db 74H, 65H, 64H, 3AH, 0AH, 20H, 20H, 20H       ; 0230 _ ted:.   
        db 20H, 20H, 63H, 6FH, 6DH, 6DH, 61H, 6EH       ; 0238 _   comman
        db 64H, 20H, 2DH, 66H, 20H, 69H, 6EH, 66H       ; 0240 _ d -f inf
        db 69H, 6CH, 65H, 20H, 6FH, 75H, 74H, 66H       ; 0248 _ ile outf
        db 69H, 6CH, 65H, 30H, 31H, 20H, 6FH, 75H       ; 0250 _ ile01 ou
        db 74H, 66H, 69H, 6CH, 65H, 30H, 32H, 0AH       ; 0258 _ tfile02.
        db 20H, 20H, 4FH, 72H, 3AH, 0AH, 20H, 20H       ; 0260 _   Or:.  
        db 20H, 20H, 20H, 63H, 6FH, 6DH, 6DH, 61H       ; 0268 _    comma
        db 6EH, 64H, 20H, 2DH, 6EH, 20H, 6EH, 75H       ; 0270 _ nd -n nu
        db 6DH, 62H, 65H, 72H, 20H, 6FH, 75H, 74H       ; 0278 _ mber out
        db 66H, 69H, 6CH, 65H, 30H, 31H, 20H, 6FH       ; 0280 _ file01 o
        db 75H, 74H, 66H, 69H, 6CH, 65H, 30H, 32H       ; 0288 _ utfile02
        db 00H                                          ; 0290 _ .

?_060:                                                  ; byte
        db 53H, 74H, 61H, 72H, 74H, 00H                 ; 0291 _ Start.

?_061:                                                  ; byte
        db 2DH, 66H, 00H                                ; 0297 _ -f.

?_062:                                                  ; byte
        db 72H, 00H                                     ; 029A _ r.

?_063:                                                  ; byte
        db 25H, 64H, 0AH, 00H                           ; 029C _ %d..

?_064:                                                  ; byte
        db 2DH, 6EH, 00H                                ; 02A0 _ -n.

?_065:                                                  ; byte
        db 77H, 00H                                     ; 02A3 _ w.

?_066:                                                  ; byte
        db 46H, 69H, 6CH, 6CH, 65H, 64H, 20H, 63H       ; 02A5 _ Filled c
        db 6FH, 6EH, 74H, 61H, 69H, 6EH, 65H, 72H       ; 02AD _ ontainer
        db 3AH, 0AH, 00H                                ; 02B5 _ :..

?_067:                                                  ; byte
        db 53H, 6FH, 72H, 74H, 65H, 64H, 20H, 63H       ; 02B8 _ Sorted c
        db 6FH, 6EH, 74H, 61H, 69H, 6EH, 65H, 72H       ; 02C0 _ ontainer
        db 3AH, 0AH, 00H                                ; 02C8 _ :..

?_068:                                                  ; byte
        db 53H, 74H, 6FH, 70H, 00H                      ; 02CB _ Stop.


