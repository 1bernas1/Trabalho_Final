use base_de_dados_médica;

#__________Update__________

UPDATE utilizadores
SET idade = 22
WHERE id_utilizador = 5;

#--------------------------------------------------------------

#__________Delete__________

delete from utilizadores 
where id_utilizador = 5;

#--------------------------------------------------------------

#__________Alter__________

ALTER TABLE utilizadores 
ADD telefone VARCHAR(20);

#--------------------------------------------------------------

