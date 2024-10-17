# Meu Primeiro Banco de Dados SQL com MySQL

Este repositório contém o código e os scripts SQL do meu primeiro projeto de banco de dados, desenvolvido em MySQL. O banco de dados foi projetado para armazenar informações de produtos e clientes, incluindo características como nome, embalagem, tamanho, sabor e preço dos produtos, além de informações pessoais e de compra dos clientes.

## Estrutura do Banco de Dados

### Tabela `tbprodutos`

- **PRODUTO**: Código do produto (VARCHAR 20)
- **NOME**: Nome do produto (VARCHAR 150)
- **EMBALAGEM**: Tipo de embalagem (VARCHAR 50)
- **TAMANHO**: Tamanho do produto (VARCHAR 50)
- **SABOR**: Sabor do produto (VARCHAR 50)
- **PRECO_LISTA**: Preço de venda sugerido (FLOAT)

### Tabela `tbclientes`

- **CPF**: Número do CPF do cliente (VARCHAR 11)
- **NOME**: Nome completo do cliente (VARCHAR 100)
- **ENDERECO1**: Endereço principal do cliente (VARCHAR 150)
- **ENDERECO2**: Endereço secundário (VARCHAR 150)
- **BAIRRO**: Bairro de residência (VARCHAR 50)
- **CIDADE**: Cidade de residência (VARCHAR 50)
- **ESTADO**: Estado (VARCHAR 2)
- **CEP**: Código postal (VARCHAR 8)
- **IDADE**: Idade do cliente (SMALLINT)
- **SEXO**: Gênero do cliente (VARCHAR 1)
- **LIMITE_CREDITO**: Limite de crédito disponível (FLOAT)
- **VOLUME_COMPRA**: Valor total das compras realizadas (FLOAT)
- **PRIMEIRA_COMPRA**: Indica se é a primeira compra (BIT)

## Scripts Incluídos

- `criacao_tabelas.sql`: Script para criar as tabelas `tbProduto` e `tbClientes`.
- `insercoes_produtos.sql`: Script para inserir dados iniciais na tabela `tbProduto`.
- `insercoes_clientes.sql`: Script para inserir dados iniciais na tabela `tbClientes`.

