SELECT A.CHAPA,
A.CODRECEBIMENTO 
FROM RM.PFUNC A 
WHERE CODSECAO LIKE '%5054%' AND 
A.CODFILIAL=:FILIAL	 AND 
(A.CODFUNCAO = 'AFI1064' OR A.CODFUNCAO = 'AFI9020')