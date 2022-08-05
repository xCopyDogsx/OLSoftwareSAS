USE OLSoftwareSAS;  
GO  
CREATE PROCEDURE Extraer 

AS   
    SET NOCOUNT ON;  
    SELECT P.Pro_ID, C.Cli_ID ,CONCAT(Cli_Nombres,+' '+C.Cli_Apellidos) as "Nombres",C.Cli_Telefono,
	P.Pro_Nombre,P.Pro_FecIni,P.Pro_FecFin,
	P.Pro_Horas,P.Pro_Precio,P.Pro_Estado,P.Pro_Lenguajes,P.Pro_Nivel 
	FROM Clientes as C
	INNER JOIN Proyectos as P
	ON C.Cli_ID=P.Cli_ID
GO  
