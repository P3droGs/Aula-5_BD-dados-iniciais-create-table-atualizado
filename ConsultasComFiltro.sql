-- Consulta com filtro: usuários com email do domínio 'email.com'
SELECT nome, email FROM usuario
WHERE email LIKE '%@email.com';

-- Consulta com filtro: eventos que ainda estão ativos
SELECT titulo, status FROM evento
WHERE status = 'Ativo';
