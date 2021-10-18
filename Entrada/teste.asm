;Programa para entrada de dados

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
    msg db "Digite o seu nome: ", LF, NULL
    tam equ $-msg
section .bss
    nome resb 1
section .text

global _start

_start:
    mov eax, SYS_WRITE  ;Impressao da mensagem
    mov ebx, STD_OUT
    mov ecx, msg
    mov edx, tam
    int SYS_CALL

    mov eax, SYS_READ   ;Leitura do nome
    mov ebx, STD_IN
    mov ecx, nome
    mov edx, 0xA        ;suporta apenas 10 caracteres
    int SYS_CALL

saida:
    mov eax, SYS_EXIT
    mov ebx, RET_EXIT
    int SYS_CALL