# Documentação Power BI — Call_Center.pbix

## 1. Relação das Tabelas e Medidas

### _Pasta: \_Medidas_

| _**ID_Med_Tab_1**_ | _**Nome da Medida**_           | _**Medida**_                                                                               |
| :----------------: | ------------------------------ | ------------------------------------------------------------------------------------------ |
|         01         | `#_Ligacoes_Total_Periodo`     | `COUNTROWS( fatoLigacoes )`                                                                |
|         02         | `#_Total_Abordagem`            | `SUMX( `                                                                                   |
|                    |                                | `ㅤㅤ'fatoLigacoes',`                                                                      |
|                    |                                | `ㅤㅤIF('fatoLigacoes'[bl_abordagem] = TRUE(), 1, 0)`                                      |
|                    |                                | `)`                                                                                        |
|         03         | `#_Total_Agendamento`          | `SUMX(`                                                                                    |
|                    |                                | `ㅤㅤfatoLigacoes',`                                                                       |
|                    |                                | `ㅤㅤIF('fatoLigacoes'[bl_agendamento] = TRUE(), 1, 0)`                                    |
|                    |                                | ` )`                                                                                       |
|         04         | `#_Total_Agendamento_Pessoal`  | `SUMX(`                                                                                    |
|                    |                                | `ㅤㅤ'fatoLigacoes',`                                                                      |
|                    |                                | `ㅤㅤIF('fatoLigacoes'[bl_agendamento_pessoal] = TRUE(), 1, 0)`                            |
|                    |                                | `)`                                                                                        |
|         05         | `Atendido`                     | `SUMX(`                                                                                    |
|                    |                                | `ㅤㅤ'fatoLigacoes',`                                                                      |
|                    |                                | `ㅤㅤIF('fatoLigacoes'[bl_atendido] = TRUE(), 1, 0)`                                       |
|                    |                                | `)`                                                                                        |
|         06         | `#_Total_Auditor`              | `SUMX(`                                                                                    |
|                    |                                | `ㅤㅤ'fatoLigacoes',`                                                                      |
|                    |                                | `ㅤㅤIF('fatoLigacoes'[bl_auditor] = TRUE(), 1, 0)`                                        |
|                    |                                | `)`                                                                                        |
|         07         | `#_Total_Auditoria_Backoffice` | `SUMX(`                                                                                    |
|                    |                                | `ㅤㅤ'fatoLigacoes',`                                                                      |
|                    |                                | `ㅤㅤIF('fatoLigacoes'[bl_auditoria_backoffice] = TRUE(), 1, 0)`                           |
|                    |                                | `)`                                                                                        |
|         08         | `Improdutivo`                  | `SUMX(`                                                                                    |
|                    |                                | `ㅤㅤ'fatoLigacoes',`                                                                      |
|                    |                                | `ㅤㅤIF('fatoLigacoes'[bl_improdutivo] = TRUE(), 1, 0)`                                    |
|                    |                                | `)`                                                                                        |
|         09         | `Lead Finalizado`              | `SUMX(`                                                                                    |
|                    |                                | `ㅤㅤ'fatoLigacoes',`                                                                      |
|                    |                                | `ㅤㅤIF('fatoLigacoes'[bl_finaliza_lead] = TRUE(), 1, 0)`                                  |
|                    |                                | `)`                                                                                        |
|         10         | `#_Total_Pre_Venda`            | `SUMX( 'fatoLigacoes',`                                                                    |
|                    |                                | `ㅤㅤ'fatoLigacoes',`                                                                      |
|                    |                                | `ㅤㅤIF('fatoLigacoes'[bl_pre_venda] = TRUE(), 1, 0)`                                      |
|                    |                                | `)`                                                                                        |
|         11         | `#_Total_Target`               | `SUMX(`                                                                                    |
|                    |                                | `ㅤㅤ'fatoLigacoes',`                                                                      |
|                    |                                | `ㅤㅤIF('fatoLigacoes'[bl_target] = TRUE(), 1, 0)`                                         |
|                    |                                | `)`                                                                                        |
|         12         | `#Total_Recusa`                | `SUMX(`                                                                                    |
|                    |                                | `ㅤㅤ'fatoLigacoes',`                                                                      |
|                    |                                | `ㅤㅤIF( 'fatoLigacoes'[bl_recusa] = TRUE(), 1, 0 )`                                       |
|                    |                                | `)`                                                                                        |
|         13         | `#_Total_Telefone_Finalizado`  | `SUMX(`                                                                                    |
|                    |                                | `ㅤㅤ'fatoLigacoes',`                                                                      |
|                    |                                | `IF( 'fatoLigacoes'[bl_telefone_finalizado] = TRUE(), 1, 0 )`                              |
|                    |                                | `)`                                                                                        |
|         14         | `#_Total_0_Classificacao`      | `SUMX(`                                                                                    |
|                    |                                | `ㅤㅤ'fatoLigacoes',`                                                                      |
|                    |                                | `ㅤㅤIF(`                                                                                  |
|                    |                                | `ㅤㅤㅤ'fatoLigacoes'[bl_abordagem] = FALSE() &&`                                          |
|                    |                                | `ㅤㅤㅤ'fatoLigacoes'[bl_agendamento] = FALSE() &&`                                        |
|                    |                                | `ㅤㅤㅤ'fatoLigacoes'[bl_agendamento_pessoal] = FALSE() &&`                                |
|                    |                                | `ㅤㅤㅤ'fatoLigacoes'[bl_atendido] = FALSE() &&`                                           |
|                    |                                | `ㅤㅤㅤ'fatoLigacoes'[bl_auditor] = FALSE() &&`                                            |
|                    |                                | `ㅤㅤㅤ'fatoLigacoes'[bl_auditoria_backoffice] = FALSE() &&`                               |
|                    |                                | `ㅤㅤㅤ'fatoLigacoes'[bl_finaliza_lead] = FALSE() &&`                                      |
|                    |                                | `ㅤㅤㅤ'fatoLigacoes'[bl_improdutivo] = FALSE() &&`                                        |
|                    |                                | `ㅤㅤㅤ'fatoLigacoes'[bl_pre_venda] = FALSE() &&`                                          |
|                    |                                | `ㅤㅤㅤ'fatoLigacoes'[bl_recusa] = FALSE() &&`                                             |
|                    |                                | `ㅤㅤㅤ'fatoLigacoes'[bl_target] = FALSE() &&`                                             |
|                    |                                | `ㅤㅤㅤ'fatoLigacoes'[bl_telefone_finalizado] = FALSE(), 1, 0 )`                           |
|                    |                                | `)`                                                                                        |
|         15         | `#_Ligacoes_Total_Geral`       | `CALCULATE(`                                                                               |
|                    |                                | `ᅠᅠCOUNTROWS(fatoLigacoes),`                                                               |
|                    |                                | `ᅠᅠALL()`                                                                                  |
|                    |                                | `)`                                                                                        |
|         16         | `#_Leads_Total_Distinto`       | `DISTINCTCOUNT(fatoLigacoes[id_lead])`                                                     |
|         17         | `#_Leads_Total_Geral`          | `SUMX(`                                                                                    |
|                    |                                | `ᅠᅠ'fatoLigacoes',`                                                                        |
|                    |                                | `ᅠᅠIF( 'fatoLigacoes'[id_lead] > 0, 1, 0 )`                                                |
|                    |                                | `)`                                                                                        |
|         18         | `#_Ligacoes_Total_Atendido`    | `CALCULATE(`                                                                               |
|                    |                                | `ᅠᅠCOUNTROWS( fatoLigacoes ),`                                                             |
|                    |                                | `ᅠᅠfatoLigacoes[bl_atendido] = TRUE()`                                                     |
|                    |                                | `)`                                                                                        |
|         19         | `#_TMA_Ligacoes_Atendidas`     | `VAR totalSegundos =`                                                                      |
|                    |                                | `ᅠᅠSUMX(`                                                                                  |
|                    |                                | `ᅠᅠᅠfatoLigacoes,`                                                                         |
|                    |                                | `ᅠᅠᅠfatoLigacoes[qtd_segundos_hora_fim] - fatoLigacoes[qtd_segundos_hora_inicio]`          |
|                    |                                | `ᅠᅠ)`                                                                                      |
|                    |                                | `VAR tempoMedioBruto =`                                                                    |
|                    |                                | `ᅠᅠDIVIDE( totalSegundos, _Medidas[Atendido], 0 )`                                         |
|                    |                                | `RETURN`                                                                                   |
|                    |                                | `ᅠᅠDIVIDE( tempoMedioBruto, 60, 0 )`                                                       |
|         20         | `#_TMA_Ligacoes_Periodo`       | `VAR totalSegundos =`                                                                      |
|                    |                                | `ᅠᅠSUMX(`                                                                                  |
|                    |                                | `ᅠᅠᅠfatoLigacoes,`                                                                         |
|                    |                                | `ᅠᅠᅠfatoLigacoes[qtd_segundos_hora_fim] - fatoLigacoes[qtd_segundos_hora_inicio]`          |
|                    |                                | `ᅠᅠ)`                                                                                      |
|                    |                                | `VAR tempoMedioBruto =`                                                                    |
|                    |                                | `ᅠᅠDIVIDE( totalSegundos, _Medidas[#_Ligacoes_Total_Periodo], 0 )`                         |
|                    |                                | `RETURN`                                                                                   |
|                    |                                | `ᅠᅠDIVIDE( tempoMedioBruto, 60, 0 )`                                                       |
|         21         | `#_Ranking`                    | `RANKX(`                                                                                   |
|                    |                                | `ᅠᅠALL(dimDDD),`                                                                           |
|                    |                                | `ᅠᅠ_Medidas[#_Ligacoes_Total_Periodo]`                                                     |
|                    |                                | `)`                                                                                        |
|         22         | `#_Ranking_Atendente`          | `RANKX(`                                                                                   |
|                    |                                | `ᅠᅠALL( dimUsuario ),`                                                                     |
|                    |                                | `ᅠᅠ[#_Ligacoes_Total_Periodo],`                                                            |
|                    |                                | `ᅠᅠ,`                                                                                      |
|                    |                                | `ᅠᅠDESC,`                                                                                  |
|                    |                                | `ᅠᅠDense`                                                                                  |
|                    |                                | `)`                                                                                        |
|         23         | `#_TOP10_Melhores`             | `CALCULATE(`                                                                               |
|                    |                                | `ᅠᅠ[#_Ligacoes_Total_Periodo],`                                                            |
|                    |                                | `ᅠᅠKEEPFILTERS(`                                                                           |
|                    |                                | `ᅠᅠᅠTOPN( 10, ALL( dimDDD[uf] ), [#_Ligacoes_Total_Periodo], DESC )`                       |
|                    |                                | `ᅠᅠ)`                                                                                      |
|                    |                                | `)`                                                                                        |
|         24         | `#_TOP10_Piores`               | `CALCULATE(`                                                                               |
|                    |                                | `ᅠᅠ[#_Ligacoes_Total_Periodo],`                                                            |
|                    |                                | `ᅠᅠKEEPFILTERS(`                                                                           |
|                    |                                | `ᅠᅠᅠTOPN( 10, ALL( dimDDD[uf] ), [#_Ligacoes_Total_Periodo], ASC )`                        |
|                    |                                | `ᅠᅠ)`                                                                                      |
|                    |                                | `)`                                                                                        |
|         25         | `Data_Mais_Ligacoes`           | `FORMAT(`                                                                                  |
|                    |                                | `ᅠᅠCALCULATE(`                                                                             |
|                    |                                | `ᅠᅠᅠLASTNONBLANK( fatoLigacoes[data_inicio], [#_Ligacoes_Total_Periodo] ),`                |
|                    |                                | `ᅠᅠᅠTOPN( 1, ALL( fatoLigacoes[data_inicio] ), [#_Ligacoes_Total_Periodo], DESC )`         |
|                    |                                | `ᅠᅠ),`                                                                                     |
|                    |                                | `ᅠᅠ"DD/MM/YYYY"`                                                                           |
|                    |                                | `)`                                                                                        |
|         26         | `Data_Mais_Leads`              | `FORMAT(`                                                                                  |
|                    |                                | `ᅠᅠCALCULATE(`                                                                             |
|                    |                                | `ᅠᅠᅠLASTNONBLANK( fatoLigacoes[data_inicio], [#_Ligacoes_Total_Periodo] ),`                |
|                    |                                | `ᅠᅠᅠTOPN( 1, ALL( fatoLigacoes[data_inicio] ), [#_Leads_Total_Distinto], DESC )`           |
|                    |                                | `ᅠᅠ),`                                                                                     |
|                    |                                | `ᅠᅠ"DD/MM/YYYY"`                                                                           |
|                    |                                | `)`                                                                                        |
|         27         | `#_Qtd_Data_Mais_Ligacoes`     | `CALCULATE(`                                                                               |
|                    |                                | `ᅠᅠ[#_Ligacoes_Total_Periodo],`                                                            |
|                    |                                | `ᅠᅠTOPN( 1, ALL( fatoLigacoes[data_inicio] ), [#_Ligacoes_Total_Periodo], DESC )`          |
|                    |                                | `)`                                                                                        |
|         28         | `Data_Mais_Vendas`             | `FORMAT(`                                                                                  |
|                    |                                | `ᅠᅠCALCULATE(`                                                                             |
|                    |                                | `ᅠᅠᅠLASTNONBLANK( fatoLigacoes[data_inicio], [#_Ligacoes_Total_Periodo] ),`                |
|                    |                                | `ᅠᅠᅠTOPN( 1, ALL( fatoLigacoes[data_inicio] ), [#_Leads_Total_Distinto], DESC )`           |
|                    |                                | `ᅠᅠ),`                                                                                     |
|                    |                                | `ᅠᅠ"DD/MM/YYYY"`                                                                           |
|                    |                                | `)`                                                                                        |
|         29         | `Data_Menos_Vendas`            | `FORMAT(`                                                                                  |
|                    |                                | `ᅠᅠCALCULATE(`                                                                             |
|                    |                                | `ᅠᅠᅠLASTNONBLANK( fatoLigacoes[data_inicio], [#_Leads_Total_Distinto] ),`                  |
|                    |                                | `ᅠᅠᅠTOPN( 1, ALL( fatoLigacoes[data_inicio] ), [#_Leads_Total_Distinto], ASC )`            |
|                    |                                | `ᅠᅠ),`                                                                                     |
|                    |                                | `ᅠᅠ"DD/MM/YYYY"`                                                                           |
|                    |                                | `)`                                                                                        |
|         30         | `#_Qtd_Data_Menos_Vendas`      | `CALCULATE(`                                                                               |
|                    |                                | `ᅠᅠ[#_Leads_Total_Distinto],`                                                              |
|                    |                                | `ᅠᅠTOPN( 1, ALL( fatoLigacoes[data_inicio] ), [#_Leads_Total_Distinto], ASC )`             |
|                    |                                | `)`                                                                                        |
|         31         | `#_Periodo_Texto`              | `VAR _Meses = VALUES( dimCalendario[mes_num] )`                                            |
|                    |                                | `VAR _QtdMeses = COUNTROWS( _Meses )`                                                      |
|                    |                                | `RETURN`                                                                                   |
|                    |                                | `IF(`                                                                                      |
|                    |                                | `ᅠᅠ_QtdMeses = 1,`                                                                         |
|                    |                                | `ᅠᅠSELECTEDVALUE( dimCalendario[mes_num], "Periodo Completo" ),`                           |
|                    |                                | `ᅠᅠIF(`                                                                                    |
|                    |                                | `ᅠᅠᅠ_QtdMeses >= 12,`                                                                      |
|                    |                                | `ᅠᅠᅠ"Periodo Completo",`                                                                   |
|                    |                                | `ᅠᅠᅠCONCATENATEX( _Meses, dimCalendario[mes_num], " e " )`                                 |
|                    |                                | `ᅠᅠ)`                                                                                      |
|                    |                                | `)`                                                                                        |
|         32         | `#_Usuario_Texto`              | `SELECTEDVALUE( dimUsuario[nm_dsc_usuario], "Todos os Usuarios" )`                         |
|         33         | `#_Pct_Vendas_Texto`           | `FORMAT(`                                                                                  |
|                    |                                | `ᅠᅠDIVIDE( [#_Leads_Total_Distinto], [#_Ligacoes_Total_Periodo], 0 ),`                     |
|                    |                                | `ᅠᅠ"0.00%"`                                                                                |
|                    |                                | `)`                                                                                        |
|         34         | `&_Periodo_Texto`              | `VAR _Meses = VALUES( dimCalendario[mes_nm_abrev] )`                                       |
|                    |                                | `VAR _QtdMeses = COUNTROWS( _Meses )`                                                      |
|                    |                                | `VAR _NomeMeses = CONCATENATEX(`                                                           |
|                    |                                | `ᅠᅠ_Meses,`                                                                                |
|                    |                                | `ᅠᅠdimCalendario[mes_nm_abrev], ", ", dimCalendario[mes_nm_abrev], ASC )`                  |
|                    |                                | `RETURN`                                                                                   |
|                    |                                | `SWITCH(`                                                                                  |
|                    |                                | `ᅠᅠTRUE(),`                                                                                |
|                    |                                | `ᅠᅠ_QtdMeses = 1, "No mes de " & _NomeMeses,`                                              |
|                    |                                | `ᅠᅠ_QtdMeses > 1, "No periodo selecionado"`                                                |
|                    |                                | `)`                                                                                        |
|         35         | `%_Abordagem_Per`              | `DIVIDE( _Medidas[#_Total_Abordagem], _Medidas[#_Ligacoes_Total_Geral], 0 )`               |
|         36         | `%_Abordagem_Ger`              | `CALCULATE(`                                                                               |
|                    |                                | `ᅠᅠDIVIDE( _Medidas[#_Total_Abordagem], _Medidas[#_Ligacoes_Total_Geral], 0 ),`            |
|                    |                                | `ᅠᅠALL()`                                                                                  |
|                    |                                | `)`                                                                                        |
|         37         | `%_Agendamento_Per`            | `DIVIDE( _Medidas[#_Total_Agendamento], _Medidas[#_Ligacoes_Total_Periodo], 0 )`           |
|         38         | `%_Agendamento_Pessoal_Per`    | `DIVIDE( _Medidas[#_Total_Agendamento_Pessoal], _Medidas[#_Ligacoes_Total_Periodo], 0 )`   |
|         39         | `%_Agendamento_Ger`            | `CALCULATE(`                                                                               |
|                    |                                | `ᅠᅠDIVIDE( _Medidas[#_Total_Agendamento], _Medidas[#_Ligacoes_Total_Geral], 0 ),`          |
|                    |                                | `ᅠᅠALL()`                                                                                  |
|                    |                                | `)`                                                                                        |
|         40         | `%_Agendamento_Pessoal_Ger`    | `CALCULATE(`                                                                               |
|                    |                                | `ᅠᅠDIVIDE( _Medidas[#_Total_Agendamento_Pessoal], _Medidas[#_Ligacoes_Total_Geral], 0 ),`  |
|                    |                                | `ᅠᅠALL()`                                                                                  |
|                    |                                | `)`                                                                                        |
|         41         | `%_Atendido_Per`               | `DIVIDE( _Medidas[Atendido], _Medidas[#_Ligacoes_Total_Periodo], 0 )`                      |
|         42         | `%_Atendido_Ger`               | `CALCULATE(`                                                                               |
|                    |                                | `ᅠᅠDIVIDE( _Medidas[Atendido], _Medidas[#_Ligacoes_Total_Geral], 0 ),`                     |
|                    |                                | `ᅠᅠALL()`                                                                                  |
|                    |                                | `)`                                                                                        |
|         43         | `%_Auditor_Per`                | `DIVIDE( _Medidas[#_Total_Auditor], _Medidas[#_Ligacoes_Total_Periodo], 0 )`               |
|         44         | `%_Auditor_Ger`                | `CALCULATE(`                                                                               |
|                    |                                | `ᅠᅠDIVIDE( _Medidas[#_Total_Auditor], _Medidas[#_Ligacoes_Total_Geral], 0 ),`              |
|                    |                                | `ᅠᅠALL()`                                                                                  |
|                    |                                | `)`                                                                                        |
|         45         | `%_Auditoria_Backoffice_Per`   | `DIVIDE( _Medidas[#_Total_Auditoria_Backoffice], _Medidas[#_Ligacoes_Total_Periodo], 0 )`  |
|         46         | `%_Auditoria_Backoffice_Ger`   | `CALCULATE(`                                                                               |
|                    |                                | `ᅠᅠDIVIDE( _Medidas[#_Total_Auditoria_Backoffice], _Medidas[#_Ligacoes_Total_Geral], 0 ),` |
|                    |                                | `ᅠᅠALL()`                                                                                  |
|                    |                                | `)`                                                                                        |
|         47         | `%_Finaliza_Lead_Per`          | `DIVIDE( _Medidas[Lead Finalizado], _Medidas[#_Ligacoes_Total_Periodo], 0 )`               |
|         48         | `%_Finaliza_Lead_Ger`          | `CALCULATE(`                                                                               |
|                    |                                | `ᅠᅠDIVIDE( _Medidas[Lead Finalizado], _Medidas[#_Ligacoes_Total_Geral], 0 ),`              |
|                    |                                | `ᅠᅠALL()`                                                                                  |
|                    |                                | `)`                                                                                        |
|         49         | `%_Improdutivo_Per`            | `DIVIDE( _Medidas[Improdutivo], _Medidas[#_Ligacoes_Total_Periodo], 0 )`                   |
|         50         | `%_Improdutivo_Ger`            | `CALCULATE(`                                                                               |
|                    |                                | `ᅠᅠDIVIDE( _Medidas[Improdutivo], _Medidas[#_Ligacoes_Total_Geral], 0 ),`                  |
|                    |                                | `ᅠᅠALL()`                                                                                  |
|                    |                                | `)`                                                                                        |
|         51         | `%_Pre_Venda_Per`              | `DIVIDE( _Medidas[#_Total_Pre_Venda], _Medidas[#_Ligacoes_Total_Periodo], 0 )`             |
|         52         | `%_Pre_Venda_Ger`              | `CALCULATE(`                                                                               |
|                    |                                | `ᅠᅠDIVIDE( _Medidas[#_Total_Pre_Venda], _Medidas[#_Ligacoes_Total_Geral], 0 ),`            |
|                    |                                | `ᅠᅠALL()`                                                                                  |
|                    |                                | `)`                                                                                        |
|         53         | `%_Recusa_Per`                 | `DIVIDE( _Medidas[#_Total_Recusa], _Medidas[#_Ligacoes_Total_Periodo], 0 ),`               |
|         54         | `%_Recusa_Ger`                 | `CALCULATE(`                                                                               |
|                    |                                | `ᅠᅠDIVIDE( _Medidas[#_Total_Recusa], _Medidas[#_Ligacoes_Total_Geral], 0 ),`               |
|                    |                                | `ᅠᅠALL()`                                                                                  |
|                    |                                | `)`                                                                                        |
|         55         | `%_Target_Per`                 | `DIVIDE( _Medidas[#_Total_Target], _Medidas[#_Ligacoes_Total_Periodo], 0 )`                |
|         56         | `%_Target_Ger`                 | `CALCULATE(`                                                                               |
|                    |                                | `ᅠᅠDIVIDE( _Medidas[#_Total_Target], _Medidas[#_Ligacoes_Total_Geral], 0 ),`               |
|                    |                                | `ᅠᅠALL()`                                                                                  |
|                    |                                | `)`                                                                                        |
|         57         | `%_Telefone_Finalizado_Per`    | `DIVIDE( _Medidas[#_Total_Telefone_Finalizado], _Medidas[#_Ligacoes_Total_Periodo], 0 )`   |
|         58         | `%_Telefone_Finalizado_Ger`    | `CALCULATE(`                                                                               |
|                    |                                | `ᅠᅠDIVIDE( _Medidas[#_Total_Telefone_Finalizado], _Medidas[#_Ligacoes_Total_Geral], 0 ),`  |
|                    |                                | `ᅠᅠALL()`                                                                                  |
|                    |                                | `)`                                                                                        |
|         59         | `%_0_Classificacao_Per`        | `DIVIDE( _Medidas[#_Total_0_Classificacao], _Medidas[#_Ligacoes_Total_Periodo], 0 )`       |
|         60         | `%_0_Classificacao_Ger`        | `CALCULATE(`                                                                               |
|                    |                                | `ᅠᅠDIVIDE( _Medidas[#_Total_0_Classificacao], _Medidas[#_Ligacoes_Total_Geral], 0 ),`      |
|                    |                                | `ᅠᅠALL()`                                                                                  |
|                    |                                | `)`                                                                                        |
|         61         | `%_Ligacoes_Total_Periodo`     | `DIVIDE( _Medidas[#_Ligacoes_Total_Periodo], _Medidas[#_Ligacoes_Total_Geral], 0 )`        |
|         62         | `%_Leads_Total_Geral`          | `DIVIDE( _Medidas[#_Leads_Total_Distinto], _Medidas[#_Leads_Total_Geral], 0 )`             |
|         63         | `&_Narrativa`                  | ㅤ`VAR _Periodo = [#_Periodo_Texto]`                                                       |
|                    |                                | ㅤ`VAR _Usuario = [#_Usuario_Texto]`                                                       |
|                    |                                | ㅤ`VAR _TotalLig = FORMAT( [#_Ligacoes_Total_Periodo], "#,###" )`                          |
|                    |                                | ㅤ`VAR _TotalVendas = FORMAT( [#_Leads_Total_Distinto], "#,###" )`                         |
|                    |                                | ㅤ`VAR _PctVendas = FORMAT( [#_Pct_Vendas_Texto], "0.00%" )`                               |
|                    |                                | ㅤ`VAR _DataPicoLig = [Data_Mais_Ligacoes]`                                                |
|                    |                                | ㅤ`VAR _QtdPicoLig = FORMAT( [#_Qtd_Data_Mais_Ligacoes], "#,##0" )`                        |
|                    |                                | ㅤ`VAR _DataPicoVenda = [Data_Mais_Vendas]`                                                |
|                    |                                | ㅤ`VAR _QtdPicoVenda = FORMAT( [#_Ligacoes_Total_Periodo], "#,##0" )`                      |
|                    |                                | ㅤ`VAR _DataMenorVenda = [Data_Menos_Vendas]`                                              |
|                    |                                | ㅤ`VAR _QtdMenorVenda = FORMAT( [#_Qtd_Data_Menos_Vendas], "#,##0" )`                      |
|                    |                                | ㅤ`VAR _TMA = FORMAT( [#_TMA_Ligacoes_Periodo], "0" )`                                     |
|                    |                                | `RETURN`                                                                                   |
|                    |                                | `"No(s) mes(es) " & _Periodo & ", o usuario " & _Usuario & " realizou " & _TotalLig &`     |
|                    |                                | `" ligacoes, das quais " & _TotalVendas & " resultaram em vendas, " &`                     |
|                    |                                | `"representando " & _PctVendas & " do total de atendimentos. " &`                          |
|                    |                                | `"O dia de maior volume de ligacoes foi " & _DataPicoLig &`                                |
|                    |                                | `", com " & _QtdPicoLig & " chamadas registradas. " &`                                     |
|                    |                                | `"A melhor data em conversao de vendas foi " & _DataPicoVenda &`                           |
|                    |                                | `", com " & _QtdPicoVenda & " vendas realizadas. " &`                                      |
|                    |                                | `"O Tempo Medio de Atendimento (TMA) no periodo foi de " & _TMA & " minutos."`             |

## 2. Dependencias das Medidas (quem utiliza cada medida)

| _**ID_Med_Tab_1**_ | Medida                         | _**ID_Med_Tab_2**_ | Medidas dependentes          |
| :----------------: | ------------------------------ | :----------------: | ---------------------------- |
|         01         | `#_Ligacoes_Total_Periodo`     |         37         | `%_Agendamento_Per`          |
|                    |                                |         38         | `%_Agendamento_Pessoal_Per`  |
|                    |                                |         41         | `%_Atendido_Per`             |
|                    |                                |         43         | `%_Auditor_Per`              |
|                    |                                |         45         | `%_Auditoria_Backoffice_Per` |
|                    |                                |         47         | `%_Finaliza_Lead_Per`        |
|                    |                                |         49         | `%_Improdutivo_Per`          |
|                    |                                |         51         | `%_Pre_Venda_Per`            |
|                    |                                |         53         | `%_Recusa_Per`               |
|                    |                                |         55         | `%_Target_Per`               |
|                    |                                |         57         | `%_Telefone_Finalizado_Per`  |
|                    |                                |         59         | `%_0_Classificacao_Per`      |
|                    |                                |         61         | `%_Ligacoes_Total_Periodo`   |
|                    |                                |         20         | `#_TMA_Ligacoes_Periodo`     |
|                    |                                |         21         | `#_Ranking`                  |
|                    |                                |         23         | `#_TOP10_Melhores`           |
|                    |                                |         22         | `#_Ranking_Atendente`        |
|                    |                                |         24         | `#_TOP10_Piores`             |
|                    |                                |         25         | `Data_Mais_Ligacoes`         |
|                    |                                |         26         | `Data_Mais_Leads`            |
|                    |                                |         27         | `#_Qtd_Data_Mais_Ligacoes`   |
|                    |                                |         28         | `Data_Mais_Vendas`           |
|                    |                                |         33         | `#_Pct_Vendas_Texto`         |
|                    |                                |         63         | `&_Narrativa`                |
|         02         | `#_Ligacoes_Total_Geral`       |         35         | `%_Abordagem_Per`            |
|                    |                                |         36         | `%_Abordagem_Ger`            |
|                    |                                |         39         | `%_Agendamento_Ger`          |
|                    |                                |         40         | `%_Agendamento_Pessoal_Ger`  |
|                    |                                |         42         | `%_Atendido_Ger`             |
|                    |                                |         44         | `%_Auditor_Ger`              |
|                    |                                |         46         | `%_Auditoria_Backoffice_Ger` |
|                    |                                |         48         | `%_Finaliza_Lead_Ger`        |
|                    |                                |         50         | `%_Improdutivo_Ger`          |
|                    |                                |         52         | `%_Pre_Venda_Ger`            |
|                    |                                |         54         | `%_Recusa_Ger`               |
|                    |                                |         56         | `%_Target_Ger`               |
|                    |                                |         58         | `%_Telefone_Finalizado_Ger`  |
|                    |                                |         60         | `%_0_Classificacao_Ger`      |
|                    |                                |         61         | `%_Ligacoes_Total_Periodo`   |
|         03         | `#_Total_Abordagem`            |         35         | `%_Abordagem_Per`            |
|                    |                                |         36         | `%_Abordagem_Ger`            |
|         04         | `#_Total_Agendamento`          |         37         | `%_Agendamento_Per`          |
|                    |                                |         39         | `%_Agendamento_Ger`          |
|         05         | `#_Total_Agendamento_Pessoal`  |         38         | `%_Agendamento_Pessoal_Per`  |
|                    |                                |         40         | `%_Agendamento_Pessoal_Ger`  |
|         06         | `Atendido`                     |         41         | `%_Atendido_Per`             |
|                    |                                |         42         | `%_Atendido_Ger`             |
|                    |                                |         19         | `#_TMA_Ligacoes_Atendidas`   |
|         07         | `#_Total_Auditor`              |         43         | `%_Auditor_Per`              |
|                    |                                |         44         | `%_Auditor_Ger`              |
|         08         | `#_Total_Auditoria_Backoffice` |         45         | `%_Auditoria_Backoffice_Per` |
|                    |                                |         46         | `%_Auditoria_Backoffice_Ger` |
|         09         | `Improdutivo`                  |         49         | `%_Improdutivo_Per`          |
|                    |                                |         50         | `%_Improdutivo_Ger`          |
|         10         | `Lead Finalizado`              |         47         | `%_Finaliza_Lead_Per`        |
|                    |                                |         48         | `%_Finaliza_Lead_Ger`        |
|         11         | `#_Total_Pre_Venda`            |         51         | `%_Pre_Venda_Per`            |
|                    |                                |         52         | `%_Pre_Venda_Ger`            |
|         12         | `#_Total_Target`               |         55         | `%_Target_Per`               |
|                    |                                |         56         | `%_Target_Ger`               |
|         13         | `#_Total_Recusa`               |         53         | `%_Recusa_Per`               |
|                    |                                |         54         | `%_Recusa_Ger`               |
|         14         | `#_Total_Telefone_Finalizado`  |         57         | `%_Telefone_Finalizado_Per`  |
|                    |                                |         58         | `%_Telefone_Finalizado_Ger`  |
|         15         | `#_Total_0_Classificacao`      |         59         | `%_0_Classificacao_Per`      |
|                    |                                |         60         | `%_0_Classificacao_Ger`      |
|         16         | `#_Leads_Total_Distinto`       |         62         | `%_Leads_Total_Geral`        |
|                    |                                |         26         | `Data_Mais_Leads`            |
|                    |                                |         28         | `Data_Mais_Vendas`           |
|                    |                                |         29         | `Data_Menos_Vendas`          |
|                    |                                |         30         | `#_Qtd_Data_Menos_Vendas`    |
|                    |                                |         33         | `#_Pct_Vendas_Texto`         |

## 3. Medidas sem nenhuma dependencia reversa

- `#_Ligacoes_Total_Atendido`,
- `#_TMA_Ligacoes_Atendidas`,
- `#_Ranking`,
- `#_Ranking_Atendente`,
- ` #_TOP10_Melhores`,
- `#_TOP10_Piores`,
- `Data_Mais_Leads`, `&_Periodo_Texto`,
- `%_Abordagem_Per`, \* `%_Abordagem_Ger`,
- `%_Agendamento_Per`,
- `%_Agendamento_Pessoal_Per`,
- `%_Agendamento_Ger`,
- `%_Agendamento_Pessoal_Ger`,
- `%_Atendido_Per`,
- `%_Atendido_Ger`,
- `%_Auditor_Per`,
- `%_Auditor_Ger`,
- `%_Auditoria_Backoffice_Per`,
- `%_Auditoria_Backoffice_Ger`,
- `%_Finaliza_Lead_Per`,
- `%_Finaliza_Lead_Ger`,
- `%_Improdutivo_Per`,
- `%_Improdutivo_Ger`,
- `%_Pre_Venda_Per`,
- `%_Pre_Venda_Ger`,
- `%_Recusa_Per`,
- `%_Recusa_Ger`,
- `%_Target_Per`,
- `%_Target_Ger`,
- `%_Telefone_Finalizado_Per`,
- `%_Telefone_Finalizado_Ger`,
- `%_0_Classificacao_Per`,
- `%_0_Classificacao_Ger`,
- `%_Ligacoes_Total_Periodo`,
- `%_Leads_Total_Geral`,
- `&_Narrativa`

## 4. Medidas do Tópico 1 não utilizadas no Tópico 2

As medidas abaixo estão definidas no Tópico 1 mas **não aparecem como dependentes em nenhuma relação do Tópico 2**, ou seja, nenhuma outra medida as referencia:

| _**ID_Med_Tab_1**_ | _**Nome da Medida**_        | _**Observação**_                            |
| :----------------: | --------------------------- | ------------------------------------------- |
|         18         | `#_Ligacoes_Total_Atendido` | Não é referenciada por nenhuma outra medida |
|         31         | `#_Periodo_Texto`           | Não é referenciada por nenhuma outra medida |
|         32         | `#_Usuario_Texto`           | Não é referenciada por nenhuma outra medida |
|         34         | `&_Periodo_Texto`           | Não é referenciada por nenhuma outra medida |
