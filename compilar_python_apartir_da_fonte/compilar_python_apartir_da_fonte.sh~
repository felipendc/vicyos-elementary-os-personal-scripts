### CÓDIGO REFATORADO USANDO A BASE DE INSTUÇÕES DO WEBSITE:
# Script criado por: Felipe Ndc (a.k.a: Vicyos)

# https://linuxize.com/post/how-to-install-python-3-9-on-ubuntu-20-04/

# Vareáveis
versao_do_python='3.9.2'
verificar_python_path=$(grep -E "(/opt/python-$versao_do_python/)" $HOME/.bashrc)
dois_primeiros_digios=${versao_do_python::-2}

# Atualizar o sistema
sudo apt update
sudo apt upgrade



# Instalar dependências necessárias para compilar o Python
# O "\" serve para pular linha no script. Não afetará o executador.
sudo apt install \
    build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev \
    libssl-dev libreadline-dev libffi-dev libsqlite3-dev wget libbz2-dev


# Limpar arquivos temporários.
if [ -e "Python-$versao_do_python.tar.xz" ]; then
    # Apagar todos os arquivos com o nome Python...
    sudo rm -R Python-$versao_do_python*
fi

# Comando para baixar o python $versao_do_python compactado no no formato em tar.xa
wget https://www.python.org/ftp/python/$versao_do_python/Python-$versao_do_python.tar.xz

# Descompactar o arquivo tar.xz
# -x é pra descompactar
# -f é para especificar o nome do arquivo
tar -xf Python-$versao_do_python.tar.xz

# Entra dentro da pasta descompactada.
cd Python-$versao_do_python

# Prepara os arquivos para a compilação.
./configure --enable-optimizations

# Compila usando todos os núcleos do processador
make -j$(nproc --all)

# Adicionar PATH para o Python
# Verificar se a vareável "verificar_python_path" é núla. Se for, adicionar path do python no .bashrc 

##################################################
# if [ -z "$verificar_python_path" ]; then
# # A barra invertida vai fazer com que o $PATH passe a ser apenas uma String.
#     cat >> $HOME/.bashrc <<- _EOF_

# # Python-$versao_do_python PATH
# export PATH="$PATH:/opt/python-3.9.2/bin/python3.9"

# _EOF_
# fi
################################################

#### Instalar o python compilado
# Estamos usando altinstall em vez de instalar porque mais tarde 
# sobrescreverá o binário python3 padrão do sistema.
sudo make altinstall

# Sair da pasta
cd ../

# Setar a versão do Python padrão
sudo update-alternatives --install /usr/bin/python python /usr/bin/python$dois_primeiros_digios 1

# Instalar distuils para python 3.9.x
sudo apt install python$dois_primeiros_digios-distutils

# Verificar a versão do Python
python$dois_primeiros_digios --version

# Limpar arquivos (Remover arquivos temporários),
# removendo todos os arquivos com o nome 'Python-$versao_do_python'.
sudo rm -R Python-$versao_do_python*
