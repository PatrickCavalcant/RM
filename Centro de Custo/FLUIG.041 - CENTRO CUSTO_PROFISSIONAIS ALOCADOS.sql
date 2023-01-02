070005143
164054030
SELECT 
  A.CODCOLIGADA,
  A.CODCCUSTO AS NROCENCUSTOCONT,
  A.NOME AS NOMECENTROCUSTO,
  (SELECT COUNT(C.CHAPA) 
  FROM PCCUSTO D
  INNER JOIN PFUNC C ON D.CODCOLIGADA = C.CODCOLIGADA AND D.CODCCUSTO = C.CODSECAO 
  WHERE D.CODCOLIGADA = 3 AND D.ATIVO = 'T' AND D.CODCCUSTO = :CODCCUSTO) AS QTD,
  B.CHAPA, 
  B.NOME, 
  B.CODSECAO,
  B.CODRECEBIMENTO 

FROM PCCUSTO A
INNER JOIN PFUNC B ON A.CODCOLIGADA = B.CODCOLIGADA AND A.CODCCUSTO = B.CODSECAO 
WHERE A.CODCOLIGADA = 3
AND A.ATIVO = 'T'
AND A.CODCCUSTO = :CODCCUSTO
ORDER BY A.NOME ASC