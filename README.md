# Banco de Dados do Sistema de Gamificação do Oportoniza

A atividade apresentada foi desenvolvida pelo aluno Davi Nascimento de Jesus sob a instrução do professor orientador <a href="https://www.linkedin.com/in/cristiano-benites-687647a8/">Cristiano Benites</a>.

## Modelagem Conceitual
&nbsp;&nbsp;&nbsp;&nbsp;Tendo em vista o propósito de desenvolver um sistema de gamificação por customização de personagem, na plataforma Oportoniza, foi desenvolvido a modelagem conceitual dessa relação. Tal iniciativa foi composta pelo levantamento, análise e validação das informações que serão armazenadas no banco de dados. Essas informações foram visualmente representadas utilizando o Modelo Lógico-Relacional, que oferece uma visão realista da estrutura e organização dos dados do projeto. 
&nbsp;&nbsp;&nbsp;&nbsp;Assim, o sistema de gamificação para a plataforma Oportoniza foi concebido com o propósito de engajar os usuários envolvidos na promoção de uma cultura de transformação social e na atribuição de significado ao "ser voluntário". A customização seria feita através do pareamento com o level do usuário na plataforma. Desse modo, segue abaixo a modelagem dos dados, que foi realizada utilizando a ferramenta online  <a href="https://github.com/ondras/wwwsqldesigner">SQLDesigner</a>.

<div align="center">

<sub>Figura 1 - Modelo conceitual do banco de dados do sistema de gamificação do Oportoniza</sub>

<img src="../assets/oportonizaDatabase.png" width="100%" >

<sup>Fonte: Material produzido pelo autor (2024)</sup>

</div>

```sql
-- Tabela "usuarios": Armazena informações sobre os usuários do sistema.
CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY, -- Identificador único do usuário
    id_customizacoes INTEGER REFERENCES customizacoes(id) -- ID da customização do mascote do usuário
);

-- Tabela "organizacoes": Armazena informações sobre as organizações cadastradas no sistema.
CREATE TABLE organizacoes (
    id SERIAL PRIMARY KEY, -- Identificador único da organização
    nome VARCHAR(100) NOT NULL, -- Nome da organização
    cnpj VARCHAR(20) NOT NULL, -- CNPJ da organização
    area_interesse VARCHAR(100) NOT NULL, -- Área de interesse da organização
    email VARCHAR(100) NOT NULL, -- E-mail da organização
    telefone VARCHAR(100) NOT NULL, -- Número de telefone da organização
    site VARCHAR(150), -- Site da organização
    objetivo TEXT NOT NULL, -- Objetivo da organização
    id_usuarios INTEGER REFERENCES usuarios(id) -- ID do usuário responsável pela organização
);
```

