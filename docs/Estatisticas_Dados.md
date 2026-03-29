# Análise de Dados - Call Center

---

## 📋 Informações Gerais

- **Arquivo:** `C:\Users\rtoni\OneDrive\Git-Dados\POC-Call-Center\tb_ligacao_202602271123.csv`
- **Data:** 26/03/2026 16:51:29
- **Registros:** 346,906
- **Colunas:** 44

## Arquivos Gerados

- **Relatório Markdown:** `Estatisticas_Dados.md`
- **Estatísticas CSV:** `Estatisticas_Dados.csv`

## Dicionário de Dados

> **Nota:** Preencher a coluna "Descrição do tipo do dado" conforme necessário.

| Coluna | Tipo | Descrição do tipo do dado |
|--------|------|---------------------------|
| id_ligacao | int64 |  |
| id_dsc_gravacao | str |  |
| id_dsc_ticket | object |  |
| id_lead | float64 |  |
| nu_dsc_telefone_to | str |  |
| nm_gp_rota | str |  |
| dh_inicio | str |  |
| dh_fim | str |  |
| dh_inicio_tabulacao | str |  |
| qt_tempo_duracao | int64 |  |
| qt_tempo_falando | int64 |  |
| qt_tempo_tabulando | int64 |  |
| qt_aguardando_chamada | int64 |  |
| id_dsc_contato | int64 |  |
| tp_dsc_contato | str |  |
| id_dsc_campanha | int64 |  |
| nm_dsc_campanha | str |  |
| id_dsc_lista | int64 |  |
| nm_dsc_lista | str |  |
| id_dsc_mailing | int64 |  |
| nm_dsc_mailing | str |  |
| id_dsc_status | int64 |  |
| nm_dsc_status | str |  |
| nm_dsc_grupo | str |  |
| nm_sub_grupo | str |  |
| id_dsc_tabulacao | int64 |  |
| nm_dsc_tabulacao | str |  |
| id_supervisor | int64 |  |
| nm_supervisor | str |  |
| id_dsc_usuario | int64 |  |
| nm_dsc_usuario | str |  |
| bl_atendido | int64 |  |
| bl_abordagem | int64 |  |
| bl_target | int64 |  |
| bl_venda | int64 |  |
| bl_agendamento | int64 |  |
| bl_agendamento_pessoal | int64 |  |
| bl_telefone_finalizado | int64 |  |
| bl_finaliza_lead | int64 |  |
| bl_pre_venda | int64 |  |
| bl_recusa | int64 |  |
| bl_improdutivo | int64 |  |
| bl_auditor | int64 |  |
| bl_auditoria_backoffice | int64 |  |

## 📊 Análise por Coluna

> Os dados detalhados estão disponíveis no arquivo [`Estatisticas_Dados.csv`](Estatisticas_Dados.csv)

| Coluna                  | Tipo    |   Total_Registros |   Valores_Unicos |   Valores_Nulos | Perc_Nulos   | Perc_Unicidade   | Valor_Mais_Frequente          |   Frequencia_Maior |
|:------------------------|:--------|------------------:|-----------------:|----------------:|:-------------|:-----------------|:------------------------------|-------------------:|
| id_ligacao              | int64   |            346906 |           346906 |               0 | 0.0%         | 100.0%           | 331517841                     |                  1 |
| id_dsc_gravacao         | str     |            346906 |            14495 |          332411 | 95.8%        | 4.2%             | 0006E479897A4F950826          |                  1 |
| id_dsc_ticket           | object  |            346906 |            14376 |          332405 | 95.8%        | 4.1%             | 9.006003001000823e+17         |                  3 |
| id_lead                 | float64 |            346906 |            25762 |             328 | 0.1%         | 7.4%             | 42537217.0                    |                 71 |
| nu_dsc_telefone_to      | str     |            346906 |            14727 |               0 | 0.0%         | 4.2%             | 4119*****15                   |                421 |
| nm_gp_rota              | str     |            346906 |                2 |            1001 | 0.3%         | 0.0%             | XPTO                          |             342951 |
| dh_inicio               | str     |            346906 |           136326 |               0 | 0.0%         | 39.3%            | 2026-02-09 09:21:02.000       |                 72 |
| dh_fim                  | str     |            346906 |           333373 |               0 | 0.0%         | 96.1%            | 2026-01-30 16:45:06.000       |                  7 |
| dh_inicio_tabulacao     | str     |            346906 |           333373 |               0 | 0.0%         | 96.1%            | 2026-01-30 16:45:06.000       |                  7 |
| qt_tempo_duracao        | int64   |            346906 |              635 |               0 | 0.0%         | 0.2%             | 1                             |              46683 |
| qt_tempo_falando        | int64   |            346906 |              501 |               0 | 0.0%         | 0.1%             | 1                             |              46751 |
| qt_tempo_tabulando      | int64   |            346906 |              400 |               0 | 0.0%         | 0.1%             | 0                             |             335946 |
| qt_aguardando_chamada   | int64   |            346906 |              184 |               0 | 0.0%         | 0.1%             | 0                             |             336356 |
| id_dsc_contato          | int64   |            346906 |                4 |               0 | 0.0%         | 0.0%             | 2                             |             342951 |
| tp_dsc_contato          | str     |            346906 |                4 |               0 | 0.0%         | 0.0%             | Power                         |             342951 |
| id_dsc_campanha         | int64   |            346906 |                1 |               0 | 0.0%         | 0.0%             | 11                            |             346906 |
| nm_dsc_campanha         | str     |            346906 |                1 |               0 | 0.0%         | 0.0%             | RETENCAO_                     |             346906 |
| id_dsc_lista            | int64   |            346906 |                4 |               0 | 0.0%         | 0.0%             | 390                           |             217284 |
| nm_dsc_lista            | str     |            346906 |                3 |             328 | 0.1%         | 0.0%             | SCP_VENDA_AVULSA              |             217416 |
| id_dsc_mailing          | int64   |            346906 |               16 |               0 | 0.0%         | 0.0%             | 9007                          |             157635 |
| nm_dsc_mailing          | str     |            346906 |               15 |             328 | 0.1%         | 0.0%             | 7831_SCP_VENDAAVULSA_30122025 |             157635 |
| id_dsc_status           | int64   |            346906 |               12 |               0 | 0.0%         | 0.0%             | 12                            |             171915 |
| nm_dsc_status           | str     |            346906 |               11 |               6 | 0.0%         | 0.0%             | Mensagem de Operadora         |             171915 |
| nm_dsc_grupo            | str     |            346906 |                7 |          335436 | 96.7%        | 0.0%             | TELEFONIA                     |               4774 |
| nm_sub_grupo            | str     |            346906 |                6 |          337922 | 97.4%        | 0.0%             | TELEFONIA                     |               4774 |
| id_dsc_tabulacao        | int64   |            346906 |               28 |               0 | 0.0%         | 0.0%             | 0                             |             335410 |
| nm_dsc_tabulacao        | str     |            346906 |               26 |          335436 | 96.7%        | 0.0%             | Rediscagem                    |               2486 |
| id_supervisor           | int64   |            346906 |                2 |               0 | 0.0%         | 0.0%             | 0                             |             332405 |
| nm_supervisor           | str     |            346906 |                1 |          332405 | 95.8%        | 0.0%             | hsantos                       |              14501 |
| id_dsc_usuario          | int64   |            346906 |                7 |               0 | 0.0%         | 0.0%             | 0                             |             332405 |
| nm_dsc_usuario          | str     |            346906 |                6 |          332405 | 95.8%        | 0.0%             | mfreitas                      |               3390 |
| bl_atendido             | int64   |            346906 |                2 |               0 | 0.0%         | 0.0%             | 0                             |             332405 |
| bl_abordagem            | int64   |            346906 |                2 |               0 | 0.0%         | 0.0%             | 0                             |             342833 |
| bl_target               | int64   |            346906 |                2 |               0 | 0.0%         | 0.0%             | 0                             |             342894 |
| bl_venda                | int64   |            346906 |                1 |               0 | 0.0%         | 0.0%             | 0                             |             346906 |
| bl_agendamento          | int64   |            346906 |                2 |               0 | 0.0%         | 0.0%             | 0                             |             340388 |
| bl_agendamento_pessoal  | int64   |            346906 |                2 |               0 | 0.0%         | 0.0%             | 0                             |             345319 |
| bl_telefone_finalizado  | int64   |            346906 |                2 |               0 | 0.0%         | 0.0%             | 0                             |             311687 |
| bl_finaliza_lead        | int64   |            346906 |                2 |               0 | 0.0%         | 0.0%             | 0                             |             344328 |
| bl_pre_venda            | int64   |            346906 |                2 |               0 | 0.0%         | 0.0%             | 0                             |             346408 |
| bl_recusa               | int64   |            346906 |                2 |               0 | 0.0%         | 0.0%             | 0                             |             344979 |
| bl_improdutivo          | int64   |            346906 |                2 |               0 | 0.0%         | 0.0%             | 0                             |             344488 |
| bl_auditor              | int64   |            346906 |                1 |               0 | 0.0%         | 0.0%             | 0                             |             346906 |
| bl_auditoria_backoffice | int64   |            346906 |                1 |               0 | 0.0%         | 0.0%             | 0                             |             346906 |

---
*Relatório gerado automaticamente*
