use base_de_dados_médica;

#__________Utilizadores__________

insert into utilizadores (nome, idade, email, password) values ('Bernardo Santos', 30, 'bernardo.santos@email.com', 'bernardo123');
insert into utilizadores (nome, idade, email, password) values ('Carla Costa', 25, 'carla.costa@email.com', 'carla123');

#--------------------------------------------------------------

#__________Medicos__________

insert into medicos (nome, idade, email, password, especialidade) values ('Dra. Ana Silva', 45, 'ana.silva@email.com', 'ana123', 'Cardiologia');
insert into medicos (nome, idade, email, password, especialidade) values ('Dr. Carlos Pereira', 50, 'carlos.pereira@email.com', 'carlos123', 'Ortopedia');

#--------------------------------------------------------------

#__________Consultas__________

insert into consultas (id_utilizador, id_medico, data_consulta, hora_consulta, motivo_consulta) values (1, 1, '2024-07-01', '10:00:00', 'Check-up anual');
insert into consultas (id_utilizador, id_medico, data_consulta, hora_consulta, motivo_consulta) values (2, 2, '2024-07-02', '14:00:00', 'Dor nas costas');

#--------------------------------------------------------------

#__________Notificacoes__________

insert into notificacoes (id_utilizador, mensagem, data_notificacao) values (1, 'Lembrete: Consulta marcada para 2024-07-01 às 10:00', '2024-06-30');
insert into notificacoes (id_utilizador, mensagem, data_notificacao) values (2, 'Lembrete: Consulta marcada para 2024-07-02 às 14:00', '2024-07-01');

#--------------------------------------------------------------

#__________Relatorios__________


insert into relatorios (id_consulta, descricao, data_relatorio) values (1, 'Paciente em bom estado de saúde. Recomenda-se manter hábitos saudáveis.', '2024-07-01');
insert into relatorios (id_consulta, descricao, data_relatorio) values (2, 'Paciente apresenta dor nas costas. Recomenda-se fisioterapia e acompanhamento médico.', '2024-07-02');

#--------------------------------------------------------------