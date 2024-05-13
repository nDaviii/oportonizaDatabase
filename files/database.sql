-- Tabela "skins-disponiveis": Armazena informações sobre as skins que existem no sistema de gamificação
CREATE TABLE skins-disponiveis (
    id SERIAL PRIMARY KEY, -- Identificador único da organização
    categoria VARCHAR(50) NOT NULL, -- Categoria da skin
    nome VARCHAR(50) NOT NULL, -- Nome da skin
    nivel-liberação INTEGER REFERENCES niveis-recompensa(nivel) -- Nível de liberação da skin
);

-- Tabela "niveis-recompensa": Armazena informações sobre os usuários do sistema.
CREATE TABLE niveis-recompensa (
    nivel SERIAL PRIMARY KEY, -- Nível em que se recebe determinada skin
    skin INTEGER REFERENCES skin-disponiveis(id) -- ID da customização do mascote do usuário
);

-- Tabela "usuarios": Armazena informações, em relação às skins e aos níveis, sobre os usuários
CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY, -- Identificador único do usuário
    skin-atual INTEGER REFERENCES skins-disponiveis(id), -- Skin atual do usuário
    nivel-atual INTEGER REFERENCES nivel-recompensas(nivel) -- Nível atual do usuário
);