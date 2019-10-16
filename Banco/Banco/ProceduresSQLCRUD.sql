use DB_TesteSinqia

go



CREATE PROCEDURE AtualizarCD
(
@Cd_Id int,
@Nome varchar(300),
@Autor varchar(300),
@Data_Criacao datetime
)
as

begin

update TB_CD set  Nome = @Nome, Autor =  @Autor,  Data_Criacao = @Data_Criacao
WHERE Cd_Id = @Cd_Id

end

GO

CREATE PROCEDURE AtualizarMusica
(
@Musica_Id INT,
@Cd_IdMusica INT,
@Nome_Musica VARCHAR(300),
@Tempo_Segundos VARCHAR(50) 
)
AS
BEGIN
UPDATE TB_MUSICA SET Nome_Musica = @Nome_Musica, Tempo_Segundos = @Tempo_Segundos, Cd_IdMusica =@Cd_IdMusica 
WHERE Musica_Id = @Musica_Id

END
GO

CREATE PROCEDURE CDmaisMusicas
AS
		BEGIN
SELECT C.Cd_Id, M.Musica_Id, C.Nome, C.Autor, M.Nome_Musica,M.Tempo_Segundos, C.Data_Criacao   FROM TB_CD C
JOIN TB_MUSICA M
ON
C.Cd_Id = M.Cd_IdMusica

END 

GO
CREATE PROCEDURE ExcluirCD
(
@Cd_id int

)

as 

begin

DELETE FROM TB_MUSICA WHERE Cd_IdMusica = @Cd_id

DELETE FROM TB_CD WHERE Cd_Id = @Cd_id

END

GO

CREATE PROCEDURE ExcluirMusicaPorID

(
@Musica_Id int

)
AS
BEGIN
	DELETE FROM TB_MUSICA WHERE Musica_Id = @Musica_Id
END

GO
CREATE PROCEDURE IncluirCD

(

@Nome varchar(300),
@Autor varchar(300),
@Data_Criacao datetime
)

as

begin


INSERT INTO TB_CD VALUES (@Nome, @Autor, @Data_Criacao)
end


GO
CREATE PROCEDURE IncluirMusica
(
@Cd_IdMusica INT,
@Nome_Musica VARCHAR(300),
@Tempo_Segundos  VARCHAR(50)  
)

as

begin


INSERT INTO TB_MUSICA VALUES (@Cd_IdMusica,@Nome_Musica, @Tempo_Segundos)
end

GO


	 CREATE PROCEDURE ObterMusica

	 AS

	 BEGIN
			SELECT Musica_Id, Cd_IdMusica, Nome_Musica, Tempo_Segundos FROM TB_MUSICA
			END
	


	GO

	CREATE PROCEDURE ObterCD
	as
	begin
			SELECT Cd_Id, Nome, Autor, Data_Criacao FROM TB_CD

			end