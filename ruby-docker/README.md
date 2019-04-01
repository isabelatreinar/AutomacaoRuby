# Automação Cucumber + Ruby

## Realizando build da imagem Docker

```sh
$ docker build -t <docker_conta_usuario>/<nome_imagem>:<versao_tag> .
```

**Exemplo**

```sh
$ docker build -t animacr/automacao_ruby:1.0.0 .
```

## Criando container para execução dos testes automatizados

```sh
$ docker run --rm --name <nome_container> -v <diretorio_host>:<diretorio_container> <nome_imagem>:<versao_tag>
```

**Exemplo**

```sh
$ docker run --rm --name automacao_ruby -v /usr/animacr/automacao_ruby/features:/app/features animacr/automacao_ruby:1.0.0
```
