# RM
[![author](https://img.shields.io/badge/author-patrick-red.svg)](https://www.linkedin.com/in/patrick-cavalcante-moraes-a95635179/) 
[![contributions welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat)](https://github.com/PatrickCavalcant)

Cláusulas desenvolvidas para utilização como exemplos no dia a dia.

Tabelas
```
GFILIAL - Filiais 
PFUNC - Funcionários
PPESSOA - Dados Pessoais
PSECAO - Seção
AHORARIO - Jornada Planejada do Funcionário
VTABELASALARIAL
VTABSALARIAIS
VNIVELFUNCAO
VFAIXASALARIAL
GDEPTO

MTRFMED - Medições
MRETPADRAO - Retenções Padrões de Itens de Contrato

MITMCNT - Itens do Contratos
MTRFMED - Itens Medidos
MCNT - Contrato
MTRF - Tarefas
MPRJ - Projeto
MPDO - Periodo
MCNTSTATUSLOG - Historico
```

Dicionário de dados
```
SELECT * FROM GDIC
WHERE
COLUNA = '#' AND
TABELA LIKE 'M%' AND
DESCRICAO LIKE '%CONTRATO%'


COLUNA = '#' //Todas as tabelas
TABELA LIKE 'M%' //Módulo
```

Localizar o código do módulo(abecedario)
```
SELECT * FROM GSISTEMA
```

Relacionamentos entre as tabelas
```
SELECT * FROM GLINKSREL
WHERE MASTERTABLE = 'FLAN'
AND CHILDTABLE = 'FCFO'

MASTERTABLE = 'FLAN' //Tabela pai
CHILDTABLE = 'FCFO' //Tabela filho
```

Rownum
```
SELECT  
* 
FROM PFUNC A 
WHERE ROWNUM  < 100
```

Este exemplo usa o aninhamento para concatenar quatro strings de caracteres:
```
CONCAT(CONCAT(CONCAT(CONCAT(RUA, ', '), NUMERO), ' - '), BAIRRO)
```
```
(B.RUA || ', N° ' || B.NUMERO || ', ' || B.COMPLEMENTO || ', ' ||  B.BAIRRO || ', ' || B.CIDADE || '-' ||  B.ESTADO || ', CEP: ' || B.CEP) ENDERECO,
```

Replace
```
REPLACE(REPLACE(REPLACE(CGC, '.', ''), '/', ''), '-', '')                  AS CNPJ,
```

Pegar a primeira e segunda posição e retirar os espações
```
RTRIM(LTRIM(SUBSTR(ZOOM_FILIAL, 1, 2)))

SUBSTR(ZOOM_FILIAL, 1, 2) - Pegar as 2 primeiras posições
RTRIM(LTRIM()) - Retira os espaços
```

Insert
```
INSERT INTO GESTAO
(NOME_USUARIO, MATRICULA, CPF, RG, CARGO)
VALUES ('TESTE', '999999', '99999999999', '99999999', 'CARGO TESTE')
```
 
```
INSERT ALL
INTO MP_SUPERINTENDENCIA (SOLICITACAO_MP, FILIAIS_MP) VALUES (36220,  71) 
INTO MP_SUPERINTENDENCIA (SOLICITACAO_MP, FILIAIS_MP) VALUES (36219,  4) 
SELECT * FROM DUAL 
```

Create
```
CREATE TABLE MP_SUPERINTENDENCIA(SOLICITACAO_MP VARCHAR(50) NOT NULL, FILIAIS_MP VARCHAR(50) NOT NULL)
```

Alter
```
ALTER TABLE MP_GERAL_ANTERIOR MODIFY (TXT_JUSTIFICATIVA VARCHAR2(2000))
```

Drop
```
DROP TABLE MP_GERAL_ANTERIOR
```

Delete
```
DELETE * FROM MP_GERAL_ANTERIOR WHERE SOLICITACAO = '31077'
```
```
DELETE FROM MP_GERAL_ANTERIOR WHERE SOLICITACAO IN('7432','7431','7429','7425','7424','7422','7417','7412','7409','7408','7405','7403','7400','7398','7397','7396','7393','7392','7391','7390','7388','7387','7386','7385','7383','7382','7381','7378','7377','7375','7374','7372','7371','7370','7369','7368','7367','7366','7365','7364','7363','7362','7361','7360','7359','7358','7351','7350','7349','7348','7347','7346','7344','7343','7340','7339','7330','7327','7326','7325','7323','7322','7321','7320','7319','7317','7316','7314','7313','7312','7311','7310','7309','7306','7305','7304','7303','7302','7301','7300','7298','7296','7295','7293','7292','7291','7290','7289','7288','7287','7286','7285','7284','7283','7282','7281','7280','7279','7275','7274','7273','7272','7271','7267','7266','7265','7264','7263','7262','7260','7258','7257','7256','7252','7247','7239','7238','7237','7236','7235','7234','7232','7226','7225','7223','7221','7219','7218','7217','7215','7214','7213','7212','7211','7210','7209','7208','7207','7206','7205','7204','7202','7201','7200','7199','7197','7196','7195','7193','7192','7190','7187','7186','7185','7184','7179','7173','7172','7171','7166','7164','7162','7161','7160','7159','7157','7156','7153','7151','7150','7149','7146','7145','7144','7143','7142','7141','7138','7137','7131','7128','7126','7125','7122','7121','7117','7116','7115','7114','7112','7111','7110','7109','7108','7106','7104','7103','7102','7101','7100','7099','7098','7097','7096','7094','7093','7092','7091','7087','7085','7084','7083','7082','7080','7079','7077','7076','7075','7074','7072','7067','7062','7060','7058','7055','7054','7050','7048','7045','7042','7038','7037','7035','7034','7031','7030','7028','7025','7024','7023','7021','7017','7016','7014','7013','7012','7011','7009','7008','7007','7005','7003','6999','6997','6994','6993','6987','6984','6980','6978','6977','6976','6975','6974','6973','6972','6971','6970','6968','6967','6966','6965','6963','6962','6961','6960','6959','6957','6956','6954','6952','6950','6949','6947','6943','6940','6939','6935','6932','6931','6930','6928','6927','6926','6925','6924','6922','6921','6920','6919','6918','6917','6912','6909','6907','6906','6904','6903','6902','6901','6897','6895','6894','6893','6892','6891','6890','6884','6883','6882','6881','6877','6876','6874','6873','6872','6871','6868','6866','6865','6864','6863','6862','6859','6857','6853','6852','6850','6847','6844','6842','6840','6839','6831','6830','6828','6827','6826','6823','6822','6821','6818','6817','6816','6815','6814','6813','6811','6807','6806','6804','6803','6797','6796','6795','6794','6791','6790','6789','6787','6785','6783','6778','6777','6776','6775','6774','6773','6772','6771','6769','6768','6766','6765','6764','6761','6760','6759','6758','6757','6753','6752','6751','6750','6749','6748','6747','6746','6744','6743','6742','6741','6738','6737','6736','6735','6734','6732','6730','6729','6728','6727','6724','6722','6721','6720','6719','6718','6716','6714','6709','6707','6705','6704','6699','6698','6696','6695','6692','6690','6689','6687','6686','6685','6679','6678','6670','6666','6664','6661','6660','6659','6658','6657','6656','6655','6654','6652','6650','6649','6647','6646','6639','6633','6632','6630','6628','6627','6626','6625','6622','6620')
```

Como pegar o nome e tipo de dados das colunas de uma tabela?
```
SELECT * FROM ALL_TAB_COLUMNS WHERE TABLE_NAME = 'MP_GERAL_ANTERIOR'
```

Quantidade de registros
```
SELECT COUNT(*) FROM MP_GERAL_ANTERIOR
```
