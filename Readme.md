# Assembly

## * O que será mostrado?
    Nesta pasta estar alguns códigos em Assembly do curso "Assembly na Prática", dado no canal do Youtube chamado de Fernando Anselmo <https://www.youtube.com/channel/UC4VS4Emzy0TSbfgMfWcpnxA> . Usados só para o estudo.

## * Ambiente ultilizado
    O ambiente foi o Ubuntu, uma distribuição do Linux.
    Obs: Os códigos desta pasta, não rodam no Windows, para que isso acontecesse, teria que haver   algumas alterações.

# * Compilador
    O compilador usado será o NASM. Para o Ubuntu um simples comando instala o NASM a partir do terminal:
    ~~~C
        $ sudo apt install nasm
    ~~~ 
# * Como rodar o código
    Para rodar o código é bem simples, cada pasta tem um arquivo MakeFile resposável por compilar e linkeditar o nosso programa. A execução desse arquivo é fácil, apenas digite o seguinte:
    ~~~C
        $ make
    ~~~
    Depois de executado corretamente o programa será compilado e linkeditado, após isso só irá faltar rodar o executável criado, digitando apenas:
    ~~~C
        $ ./teste
    ~~~