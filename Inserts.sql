-- Inserindo em tipo_evento
INSERT INTO tipo_evento (nome, descricao) VALUES
('Enchente', 'Acúmulo de água em áreas urbanas ou rurais'),
('Tempestade', 'Chuva forte com ventos e raios'),
('Deslizamento', 'Deslizamento de terra em áreas de risco');

-- Inserindo em estado
INSERT INTO estado (sigla_estado, nome_estado) VALUES
('SP', 'São Paulo'),
('RJ', 'Rio de Janeiro'),
('MG', 'Minas Gerais');

-- Inserindo em localizacao
INSERT INTO localizacao (latitude, longitude, cidade, sigla_estado) VALUES
(-23.550520, -46.633308, 'São Paulo', 'SP'),
(-22.906847, -43.172896, 'Rio de Janeiro', 'RJ'),
(-19.916681, -43.934493, 'Belo Horizonte', 'MG');

-- Inserindo em usuario
INSERT INTO usuario (nome, email, senha_hash) VALUES
('Maria Silva', 'maria@email.com', 'hash1'),
('João Souza', 'joao@email.com', 'hash2'),
('Ana Oliveira', 'ana@email.com', 'hash3');

-- Inserindo telefones dos usuários
INSERT INTO telefone (numero, id_usuario) VALUES
('11999999999', 1),
('21988888888', 2),
('31977777777', 3);

-- Inserindo em evento
INSERT INTO evento (titulo, descricao, data_hora, status, id_tipo_evento, id_localizacao) VALUES
('Enchente no centro', 'Rua alagada após chuva intensa', '2025-08-20 14:00:00', 'Ativo', 1, 1),
('Deslizamento em morro', 'Deslizamento em área residencial', '2025-08-18 09:00:00', 'Em Monitoramento', 3, 2),
('Tempestade elétrica', 'Chuva com muitos raios e ventos', '2025-08-15 18:30:00', 'Resolvido', 2, 3);

-- Inserindo em relato
INSERT INTO relato (texto, data_hora, id_evento, id_usuario) VALUES
('A água subiu até o joelho em 10 minutos.', '2025-08-20 14:30:00', 1, 1),
('Barulho forte de terra deslizando e casas em risco.', '2025-08-18 09:15:00', 2, 2),
('A tempestade foi assustadora e causou quedas de energia.', '2025-08-15 18:45:00', 3, 3);

-- Inserindo em alerta
INSERT INTO alerta (mensagem, data_hora, nivel, id_evento) VALUES
('Evacuar área central imediatamente.', '2025-08-20 14:35:00', 'Crítico', 1),
('Atenção: risco de novos deslizamentos.', '2025-08-18 09:20:00', 'Alto', 2),
('Monitoramento encerrado. Situação normalizada.', '2025-08-15 19:00:00', 'Baixo', 3);
