### REFATORAÇÃO DO CÓDIGO EM BREVE:
# https://linuxize.com/post/how-to-install-python-3-9-on-ubuntu-20-04/


# Vareáveis
versao_do_python='3.9.2'
verificar_python_path=$(grep -E "(/opt/python-$versao_do_python/)" $HOME/.bashrc)

# Atualizar o sistema
sudo apt update
sudo apt upgrade

# Instalar o wget e o Toochain padrão do GCC
sudo apt install wget build-essential -y

# Pre-requisitos para compilar o Python
sudo apt install libssl-dev zlib1g-dev libncurses5-dev libncursesw5-dev libreadline-dev libsqlite3-dev -y
sudo apt install libgdbm-dev libdb5.3-dev libbz2-dev libexpat1-dev liblzma-dev libffi-dev uuid-dev -y

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
./configure --enable-optimizations --prefix=/opt/python-$versao_do_python

# Compila usando todos os núcleos do processador
make -j $(nproc)

# Adicionar PATH para o Python
# Verificar se a vareável "verificar_python_path" é núla. Se for, adicionar path do python no .bashrc 
if [ -z "$verificar_python_path" ]; then
# A barra invertida vai fazer com que o $PATH passe a ser apenas uma String.
    cat >> $HOME/.bashrc <<- _EOF_

# Python-$versao_do_python PATH
export PATH="$PATH:/opt/python-3.9.2/bin/python3.9"

_EOF_
fi

# Instalar o python compilado
sudo make install

# Sair da pasta
cd ../

# Usar o python 3.9.2 por padrão:
sudo update-alternatives --install /usr/bin/python3 python3 /opt/python-3.9.2/bin/python3.9 1

# Verificar a versão do Python
python --version

# Limpar arquivos (Remover arquivos temporários),
# removendo todos os arquivos com o nome 'Python-$versao_do_python'.
sudo rm -R Python-$versao_do_python*
