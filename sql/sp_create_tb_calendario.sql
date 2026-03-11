CREATE DEFINER=`root`@`localhost` PROCEDURE `db_call_center`.`sp_create_tb_calendario`()
    READS SQL DATA
BEGIN
	-- ============================================================
	-- DDL + DML — Tabela Calendário
	-- Origem: datas distintas de tb_ligacoes
	-- ============================================================

	-- ── 1. Criação da tabela ────────────────────────────────────
	DROP TABLE IF EXISTS tb_calendario;

	CREATE TABLE tb_calendario (
	    num_index          INT         NOT NULL AUTO_INCREMENT,
	    data               DATE        NOT NULL,
	    dia_num            TINYINT     NOT NULL,
	    dia_semana_abrev   CHAR(3)     NOT NULL,       -- Ex: Seg
	    dia_semana_ext     VARCHAR(20) NOT NULL,       -- Ex: Segunda-feira
	    dia_mes_abrev      VARCHAR(6)  NOT NULL,       -- Ex: 01/Jan
	    mes_num            TINYINT     NOT NULL,       -- Ex: 3
	    mes_nm_abrev       VARCHAR(10) NOT NULL,       -- Ex: Mar
	    mes_nm_ext         VARCHAR(20) NOT NULL,       -- Ex: Março
	    mes_ano_abrev      CHAR(8)     NOT NULL,       -- Ex: Jan/2026
	    mes_num_ano_abrev  CHAR(7)     NOT NULL,       -- Ex: 01/2026
	    ano_num            SMALLINT    NOT NULL,       -- Ex: 2026
	    PRIMARY KEY (num_index)
	) ENGINE=InnoDB
	  DEFAULT CHARSET=utf8mb4
	  COLLATE=utf8mb4_unicode_ci
	  COMMENT='Calendário — datas distintas extraídas de tb_ligacoes';

	-- ── 2. Carga das datas distintas ────────────────────────────
	-- DATE_FORMAT com locale pt_BR não é suportado nativamente no MySQL.
	-- Os nomes de dias e meses são gerados via CASE para garantir
	-- o idioma português independente da configuração do servidor.
	INSERT INTO tb_calendario (
	    data,
	    dia_num,
	    dia_semana_abrev,
	    dia_semana_ext,
	    dia_mes_abrev,
	    mes_num,
	    mes_nm_abrev,
	    mes_nm_ext,
	    mes_ano_abrev,
	    mes_num_ano_abrev,
	    ano_num
	)
	SELECT
	    data,

	    -- Dia do mês
	    DAY(data),

	    -- Dia da semana abreviado (DAYOFWEEK: 1=Dom, 2=Seg, ... 7=Sáb)
	    CASE DAYOFWEEK(data)
	        WHEN 1 THEN 'Dom'
	        WHEN 2 THEN 'Seg'
	        WHEN 3 THEN 'Ter'
	        WHEN 4 THEN 'Qua'
	        WHEN 5 THEN 'Qui'
	        WHEN 6 THEN 'Sex'
	        WHEN 7 THEN 'Sáb'
	    END,

	    -- Dia da semana por extenso
	    CASE DAYOFWEEK(data)
	        WHEN 1 THEN 'Domingo'
	        WHEN 2 THEN 'Segunda-feira'
	        WHEN 3 THEN 'Terça-feira'
	        WHEN 4 THEN 'Quarta-feira'
	        WHEN 5 THEN 'Quinta-feira'
	        WHEN 6 THEN 'Sexta-feira'
	        WHEN 7 THEN 'Sábado'
	    END,

	    -- dia_mes_abrev: Ex: 01/Jan
	    CONCAT(LPAD(DAY(data), 2, '0'), '/',
	        CASE MONTH(data)
	            WHEN 1  THEN 'Jan' WHEN 2  THEN 'Fev' WHEN 3  THEN 'Mar'
	            WHEN 4  THEN 'Abr' WHEN 5  THEN 'Mai' WHEN 6  THEN 'Jun'
	            WHEN 7  THEN 'Jul' WHEN 8  THEN 'Ago' WHEN 9  THEN 'Set'
	            WHEN 10 THEN 'Out' WHEN 11 THEN 'Nov' WHEN 12 THEN 'Dez'
	        END
	    ),

	    -- Número do mês
	    MONTH(data),

	    -- Nome do mês abreviado
	    CASE MONTH(data)
	        WHEN 1  THEN 'Jan' WHEN 2  THEN 'Fev' WHEN 3  THEN 'Mar'
	        WHEN 4  THEN 'Abr' WHEN 5  THEN 'Mai' WHEN 6  THEN 'Jun'
	        WHEN 7  THEN 'Jul' WHEN 8  THEN 'Ago' WHEN 9  THEN 'Set'
	        WHEN 10 THEN 'Out' WHEN 11 THEN 'Nov' WHEN 12 THEN 'Dez'
	    END,

	    -- Nome do mês por extenso
	    CASE MONTH(data)
	        WHEN 1  THEN 'Janeiro'   WHEN 2  THEN 'Fevereiro' WHEN 3  THEN 'Março'
	        WHEN 4  THEN 'Abril'     WHEN 5  THEN 'Maio'      WHEN 6  THEN 'Junho'
	        WHEN 7  THEN 'Julho'     WHEN 8  THEN 'Agosto'    WHEN 9  THEN 'Setembro'
	        WHEN 10 THEN 'Outubro'   WHEN 11 THEN 'Novembro'  WHEN 12 THEN 'Dezembro'
	    END,

	    -- mes_ano_abrev: Ex: Jan/2026
	    CONCAT(
	        CASE MONTH(data)
	            WHEN 1  THEN 'Jan' WHEN 2  THEN 'Fev' WHEN 3  THEN 'Mar'
	            WHEN 4  THEN 'Abr' WHEN 5  THEN 'Mai' WHEN 6  THEN 'Jun'
	            WHEN 7  THEN 'Jul' WHEN 8  THEN 'Ago' WHEN 9  THEN 'Set'
	            WHEN 10 THEN 'Out' WHEN 11 THEN 'Nov' WHEN 12 THEN 'Dez'
	        END,
	        '/', YEAR(data)
	    ),

	    -- mes_num_ano_abrev: Ex: 01/2026
	    CONCAT(LPAD(MONTH(data), 2, '0'), '/', YEAR(data)),

	    -- Ano
	    YEAR(data)

	FROM (
	    SELECT data_inicio AS data
	    FROM tb_ligacoes
	    WHERE data_inicio IS NOT NULL

	    UNION

	    SELECT data_fim
	    FROM tb_ligacoes
	    WHERE data_fim IS NOT NULL

	    UNION

	    SELECT data_inicio_tabulacao
	    FROM tb_ligacoes
	    WHERE data_inicio_tabulacao IS NOT NULL

	) AS datas_distintas
	ORDER BY data;

	-- ── 3. Validação ────────────────────────────────────────────
	SELECT
	    COUNT(*)     AS total_datas,
	    MIN(data)    AS data_minima,
	    MAX(data)    AS data_maxima,
	    MIN(ano_num) AS ano_minimo,
	    MAX(ano_num) AS ano_maximo
	FROM tb_calendario;
END
