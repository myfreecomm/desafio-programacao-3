# Desafio de programação 3
A idéia deste desafio é nos permitir avaliar melhor as habilidades de candidatos à vagas de programador, de vários níveis.

Este desafio deve obrigatoriamente ser resolvido em **Ruby 1.9+**.

Este desafio deve ser feito por você em conjunto com o avaliador, durante sua entrevista na Myfreecomm.

## Descrição do projeto

O projeto consiste de um objeto validador de emails, com um único método, que recebe uma string com 0 ou mais endereços de email e valida-os, retornando true caso todos os emails recebidos sejam válidos, ou false caso contrário.

Os testes já estão feitos, porém a implementação ainda não.

Você deve criar a implementação até todos os testes estarem passando.

## Como executar os testes

Na raiz do projeto, configure as dependências uma única vez:

```
$ gem install bundler
$ bundle
```

Em seguida, para rodar os testes, use:

```
$ bundle exec rspec spec/email_validator_spec.rb
```
