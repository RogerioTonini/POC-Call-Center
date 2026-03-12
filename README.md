# Projeto: POC - Call Center

##

## Objetivos:

1. Criar uma pipeline de dados,

2. Gravar em um Banco de Dados

3. Gerar visões para serem consumidas pelo Power Bi

4. Criar KPIs no Front-End

## Tipagem dos Dados

- _**Arquivo origem:**_ _*tb_ligacao_202602271123.csv*_

## Estrutura dos Dados e Estatísticas das informações

![Estrutura e Estatísticas dos Dados](/docs/Estatisticas_Dados.md)

## Relação das medidas utilizadas no Power BI

![Medidas utilizadas no Power BI](/docs/Medidas_Documentacao.md)

## Atualização no GitHub - Push Inicial

### Commit: Estrutura inicial - Git

```bash
git add .gitignore .gitattributes .githooks-scripts/
git commit -m "chore(git):
- Adicionar .gitignore, - Adicionar .gitattributes para normalização de arquivos e
configurar tratamento de arquivos binários,
- Adicionar scripts de hooks para Conventional Commits"
```

### Commit: Versão do Python e Dependências do Projeto

```bash
git add .python-version pyproject.toml poetry.lock
git commit -m "build:
- Configuração da versão do Python utilizada no projeto,
- Configuração do Poetry e bibliotecas (dependências) do projeto"
```

### Commit: Configurações do VSCode

```bash
git add .vscode/
git commit -m "chore(vscode): adicionar configurações do editor"
```

### Commit: README.md

```bash
git add README.md docs/.
git commit -m "docs: adicionar documentação do projeto"
```

### Commit: app / noteboos / sql

```bash
git add app/. notebooks/. sql/.
git commit -m "feat(app): criar estrutura base da aplicação (notebooks, sql)"
```

### Commit: Testes - Se for criado

```bash
git add tests/
git commit -m "test: adicionar estrutura de testes"
```
