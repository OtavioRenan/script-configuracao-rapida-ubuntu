-- Meu script para instalação das bibliotecas e aplicações de desenvolvimento que ultilizo. Ferramentas como o VsCode, Codium, NodeJs, Angular, etc...

Para instalação é necessário dar permissão ao arquivo.

## sudo chmod +x auto-install.sh

Se a permissão não for concedida você pode dar a permissão 777 pro arquivo.

## sudo chmod 777 auto-install.sh

Agora é só executar o arquivo. Clique com o botão direito em cima do arquivo e depois em "Abrir no terminal". Ao abrir o teminal insira o comando seguinte.

## ./auto-install.sh

-- Esse script foi testado apenas nas distribuições linux baseadas no Ubuntu 20.04 e 20.10

-- O script não dá as permissões de usuário ao docker, logo é necessário vc rodar os comando: 

## sudo usermod -aG docker ${USER}

## su - ${USER}

-- Lista de Programas
    -- nodeJs
    -- npm
    -- typescript
    -- angular
    -- git-flow
    -- vs code
    -- codium
    -- pgadmin
    -- postman
    -- google-chrome
    -- chromium
    -- opera
    -- docker
    -- docker-compose

-- Para exibir o branch atual, precisamos alterar a variável PS1. Basta adicionar o código abaixo no fim do arquivo .bashrc ou do .bash_profile (ambos se encontram na home do usuário ~/):

## export PS1='\u@\h\[\033[01;34m\] \w\[\033[0;32m\]$(__git_ps1 " (%s)")\[\033[01;34m\]$\[\033[00m\] '

-- Criar uma chave ssh com ssh-keygen:

## ssh-keygen -C "seu-email@gmail.com"

-- A pasta 'oculta' .ssh é onde o ssh guarda suas chaves criptográficas, id_rsa é o arquivo que contém a chave privada. id_rsa.pub é o arquivo que contém a chave pública.

## cat .ssh/id_rsa.pub

-- Copie e cole a chave no seu repositório.