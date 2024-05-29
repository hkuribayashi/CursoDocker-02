# CursoDocker-02

## Criando nossa própria imagem Docker

Objetivo: Neste exercício você aprenderá como realizar o build de uma imagem docker.

#### Pré-requisitos
- Docker instalado em sua máquina. [Instruções de instalação](https://docs.docker.com/get-docker/).

### Passos do Exercício

1. **Editando o arquivo Dockerfile**

   Verifique o arquivo Dockerfile de acordo com as suas definições.

2. **Verificando as Imagens Baixadas**

   Ao confirmar o arquivo Dockerfile realize o build a imagem. Altere o termo nome_da_imagem de acordo com sua preferência, assim como a tag da imagem.

   ```bash
   docker images build -t nome_da_imagem:tag
   ```
   Após, você deve ver a imagem foi criada:

    ```bash
   docker images ls
   ```

4. **Criando o Primeiro Contêiner**

   Agora, vamos criar o container com base na imagem previamente criada.

   ```bash
   docker container run -d -p 5000:5000 --name meu_servidor nome_da_imagem
   ```

   - `-d`: Executa o contêiner em modo detached.
   - `--name meu_servidor`: Nomeia o contêiner como `meu_servidor`.

  Não se esqueça de alterar o termo nome_da_imagem de acordo com o nome escolhido no passo anterior.

5. **Verificando os Contêineres em Execução**

   Liste os contêineres em execução para verificar se tudo está ok.

   ```bash
   docker ps
   ```

7. **Acessando os Serviços Nginx**

   Acesse os serviços criados com o link [http://localhost:5000/](http://localhost:5000/) e verifique o que ocorreu.

#### Conclusão

Parabéns! Você criou sua própria imagem Docker.
