;Programa de comparar valores

segment .data
    LF        equ 0xA  ;quebra de linha
    NULL      equ 0xD  ;Final da string
    SYS_EXIT  equ 0x1  ;Chamada de finalizacao de codigo
    RET_EXIT  equ 0x0  ;Operacao com sucesso
    STD_IN    equ 0x0  ;Entrada padrao
    STD_OUT   equ 0x1  ;Saida padrao
    SYS_READ  equ 0x3  ;Operacao de Leitura
    SYS_WRITE equ 0x4  ;Operacao de Escrita
    SYS_CALL  equ 0x80 ;Informacao ao SO

section .data
    x dd 50
    y dd 10
    msg1 db "X maior que Y", LF, NULL
    tam1 equ $-msg1
    msg2 db "Y maior que X", LF, NULL
    tam2 equ $-msg1
section .text

global _start

_start:
    mov eax, DWORD[x]  ;transforma a variavel x em DWORD
    mov ebx, DWORD[y]  ;;transforma a variavel y em DWORD
    cmp eax, ebx       ;Compara o eax(x) com o ebx(y)
    jge maior          ;jumper condicional, se eax foi maior para 

    mov ecx, msg2
    mov edx, tam2
    jmp final 

maior:
    mov ecx, msg1
    mov edx, tam1

final:
    mov eax, SYS_WRITE
    mov ebx, STD_OUT
    int SYS_CALL

saida:
    mov eax, SYS_EXIT
    mov ebx, RET_EXIT
    int SYS_CALL