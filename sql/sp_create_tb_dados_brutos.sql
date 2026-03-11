USE poc_db;

DROP TABLE IF EXISTS tb_dados_brutos;

CREATE TABLE tb_dados_bruto (
    id_ligacao                VARCHAR(255),
    id_dsc_gravacao           VARCHAR(255),
    id_dsc_ticket             VARCHAR(255),
    id_lead                   VARCHAR(255),
    nu_dsc_telefone_to        VARCHAR(255),
    nm_gp_rota                VARCHAR(255),
    dh_inicio                 VARCHAR(255),
    dh_fim                    VARCHAR(255),
    dh_inicio_tabulacao       VARCHAR(255),
    qt_tempo_duracao          VARCHAR(255),
    qt_tempo_falando          VARCHAR(255),
    qt_tempo_tabulando        VARCHAR(255),
    qt_aguardando_chamada     VARCHAR(255),
    id_dsc_contato            VARCHAR(255),
    tp_dsc_contato            VARCHAR(255),
    id_dsc_campanha           VARCHAR(255),
    nm_dsc_campanha           VARCHAR(255),
    id_dsc_lista              VARCHAR(255),
    nm_dsc_lista              VARCHAR(255),
    id_dsc_mailing            VARCHAR(255),
    nm_dsc_mailing            VARCHAR(255),
    id_dsc_status             VARCHAR(255),
    nm_dsc_status             VARCHAR(255),
    nm_dsc_grupo              VARCHAR(255),
    nm_sub_grupo              VARCHAR(255),
    id_dsc_tabulacao          VARCHAR(255),
    nm_dsc_tabulacao          VARCHAR(255),
    id_supervisor             VARCHAR(255),
    nm_supervisor             VARCHAR(255),
    id_dsc_usuario            VARCHAR(255),
    nm_dsc_usuario            VARCHAR(255),
    bl_atendido               VARCHAR(255),
    bl_abordagem              VARCHAR(255),
    bl_target                 VARCHAR(255),
    bl_venda                  VARCHAR(255),
    bl_agendamento            VARCHAR(255),
    bl_agendamento_pessoal    VARCHAR(255),
    bl_telefone_finalizado    VARCHAR(255),
    bl_finaliza_lead          VARCHAR(255),
    bl_pre_venda              VARCHAR(255),
    bl_recusa                 VARCHAR(255),
    bl_improdutivo            VARCHAR(255),
    bl_auditor                VARCHAR(255),
    bl_auditoria_backoffice   VARCHAR(255)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_unicode_ci
  COMMENT='Tabela de dados brutos importados do CSV - POC';
