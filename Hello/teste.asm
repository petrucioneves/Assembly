;Código "Hello Wordl!" em assembly

section .data						;Secao de variaveis
	msg db 'Hello World!', 0xA		;Mensagem que sera mostrada
	tam equ $-msg					;Quantidade de caracteres da mensagem

section .text						;Secao do Programa

global _start

_start:								;Marcador inicial
	mov eax, 0x4					;"0x4" movido para eax, indica que se trata de uma saida
	mov ebx, 0x1					;"0x1" movido para ebx, indica que será realizado no terminal
	mov ecx, msg					;Passa mensagem que será mostrada, no ecx
	mov edx, tam					;passa a quantidade de caracteres para o edx
	int 0x80						;Envia a informacao ao Sistema Operacional
	
saida:								;Marcador de saida
	mov eax, 0x1					;Informa o termino das acoes
	mov ebx, 0x0					;informa o estado final do programa - 0 que é sem erro
	int 0x80						;Envia a informacao ao Sistema Operacional
