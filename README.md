-- Meu script para instalação das bibliotecas e aplicações de desenvolvimento que ultilizo. Ferramentas como o VsCode, Codium, NodeJs, Angular, etc...

Para instalação é necessário dar permissão ao arquivo.

## sudo chmod +x auto-install.sh

Se a permissão não for concedida você pode dar a permissão 777 pro arquivo.

## sudo chmod 777 auto-install.sh

Agora é só executar o arquivo. Clique com o botão direito em cima do arquivo e depois em "Abrir no terminal". Ao abrir o teminal insira o comando seguinte.

## ./auto-install.sh

-- Esse script foi testado apenas nas distribuições linux baseadas no Ubuntu 20.04 e 20.10

-- Para exibir o branch atual, precisamos alterar a variável PS1. Basta adicionar o código abaixo no fim do arquivo .bashrc ou do .bash_profile (ambos se encontram na home do usuário ~/):

## export PS1='\u@\h\[\033[01;34m\] \w\[\033[0;32m\]$(__git_ps1 " (%s)")\[\033[01;34m\]$\[\033[00m\] '