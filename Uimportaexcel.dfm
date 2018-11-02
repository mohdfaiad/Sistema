﻿object Fimportaexcel: TFimportaexcel
  Left = 0
  Top = 0
  Align = alClient
  Caption = 'Fimportaexcel'
  ClientHeight = 717
  ClientWidth = 1186
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton
    Left = 5
    Top = 592
    Width = 153
    Height = 22
    Caption = 'IMPORTAR XLS'
    OnClick = SpeedButton1Click
  end
  object SpeedButton3: TSpeedButton
    Left = 5
    Top = 632
    Width = 153
    Height = 22
    Caption = 'MOSTRAR'
    OnClick = SpeedButton3Click
  end
  object SpeedButton2: TSpeedButton
    Left = 197
    Top = 592
    Width = 153
    Height = 22
    Caption = 'IMPORTAR PARA SYSCON'
    OnClick = SpeedButton2Click
  end
  object SBexportar: TSpeedButton
    Left = 5
    Top = 672
    Width = 153
    Height = 22
    Caption = 'EXPORTAR XLS'
    OnClick = SBexportarClick
  end
  object StringGrid1: TStringGrid
    Left = 8
    Top = 8
    Width = 561
    Height = 513
    TabOrder = 0
    ColWidths = (
      64
      64
      64
      64
      64)
    RowHeights = (
      24
      24
      24
      24
      24)
  end
  object ProgressBar1: TProgressBar
    Left = 5
    Top = 552
    Width = 1148
    Height = 17
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 592
    Top = 8
    Width = 561
    Height = 513
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object ImportExcel1: TImportExcel
    Left = 541
    Top = 584
  end
  object OpenDialog1: TOpenDialog
    Left = 445
    Top = 584
  end
  object FDsyscon: TFDConnection
    Params.Strings = (
      'Database=d:\Syscon\Dados\DADOS.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Server=GIACOMIN-SERVER'
      'DriverID=FB')
    Connected = True
    Left = 440
    Top = 640
  end
  object FDQcte: TFDQuery
    Connection = FDsyscon
    SQL.Strings = (
      'select c.*'
      ''
      'from ctrc c'
      'left join ctrc_nf nf on nf.ctrc_id=c.id'
      'where c.tipo_situacao = 0'
      'and nf.ctrc_id =:codigo'
      ''
      '')
    Left = 536
    Top = 640
    ParamData = <
      item
        Position = 1
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDQcteID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQcteDATA_C: TSQLTimeStampField
      FieldName = 'DATA_C'
      Origin = 'DATA_C'
    end
    object FDQcteDATA_U: TSQLTimeStampField
      FieldName = 'DATA_U'
      Origin = 'DATA_U'
    end
    object FDQcteUSUARIO_ID: TIntegerField
      FieldName = 'USUARIO_ID'
      Origin = 'USUARIO_ID'
      Required = True
    end
    object FDQcteEMPRESA_ID: TIntegerField
      FieldName = 'EMPRESA_ID'
      Origin = 'EMPRESA_ID'
      Required = True
    end
    object FDQcteSITUACAO: TSmallintField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
    end
    object FDQcteTIPO_SITUACAO: TSmallintField
      FieldName = 'TIPO_SITUACAO'
      Origin = 'TIPO_SITUACAO'
    end
    object FDQcteNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
    end
    object FDQcteSERIE: TStringField
      FieldName = 'SERIE'
      Origin = 'SERIE'
      Required = True
      Size = 10
    end
    object FDQcteCTRC_REDESPACHO: TIntegerField
      FieldName = 'CTRC_REDESPACHO'
      Origin = 'CTRC_REDESPACHO'
    end
    object FDQcteCOMPLEMENTO_ID: TIntegerField
      FieldName = 'COMPLEMENTO_ID'
      Origin = 'COMPLEMENTO_ID'
    end
    object FDQcteMANIFESTO_ID: TIntegerField
      FieldName = 'MANIFESTO_ID'
      Origin = 'MANIFESTO_ID'
    end
    object FDQcteFINANCEIRO_ID: TIntegerField
      FieldName = 'FINANCEIRO_ID'
      Origin = 'FINANCEIRO_ID'
    end
    object FDQcteREMETENTE_ID: TIntegerField
      FieldName = 'REMETENTE_ID'
      Origin = 'REMETENTE_ID'
      Required = True
    end
    object FDQcteENDERECO_REMETENTE_ID: TIntegerField
      FieldName = 'ENDERECO_REMETENTE_ID'
      Origin = 'ENDERECO_REMETENTE_ID'
      Required = True
    end
    object FDQcteDESTINATARIO_ID: TIntegerField
      FieldName = 'DESTINATARIO_ID'
      Origin = 'DESTINATARIO_ID'
      Required = True
    end
    object FDQcteENDERECO_DESTINATARIO_ID: TIntegerField
      FieldName = 'ENDERECO_DESTINATARIO_ID'
      Origin = 'ENDERECO_DESTINATARIO_ID'
      Required = True
    end
    object FDQcteCONSIGNATARIO_ID: TIntegerField
      FieldName = 'CONSIGNATARIO_ID'
      Origin = 'CONSIGNATARIO_ID'
    end
    object FDQcteENDERECO_CONSIGNATARIO_ID: TIntegerField
      FieldName = 'ENDERECO_CONSIGNATARIO_ID'
      Origin = 'ENDERECO_CONSIGNATARIO_ID'
    end
    object FDQcteREDESPACHO_ID: TIntegerField
      FieldName = 'REDESPACHO_ID'
      Origin = 'REDESPACHO_ID'
    end
    object FDQcteENDERECO_REDESPACHO_ID: TIntegerField
      FieldName = 'ENDERECO_REDESPACHO_ID'
      Origin = 'ENDERECO_REDESPACHO_ID'
    end
    object FDQcteEMITIDO_POR_ID: TIntegerField
      FieldName = 'EMITIDO_POR_ID'
      Origin = 'EMITIDO_POR_ID'
      Required = True
    end
    object FDQcteDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      Origin = 'DATA_EMISSAO'
    end
    object FDQcteDATA_IMPRESSO: TSQLTimeStampField
      FieldName = 'DATA_IMPRESSO'
      Origin = 'DATA_IMPRESSO'
    end
    object FDQcteCFOP_NUMERO: TIntegerField
      FieldName = 'CFOP_NUMERO'
      Origin = 'CFOP_NUMERO'
      Required = True
    end
    object FDQcteTIPO_FRETE: TSmallintField
      FieldName = 'TIPO_FRETE'
      Origin = 'TIPO_FRETE'
      Required = True
    end
    object FDQcteTIPO_FRETE_REDESPACHO: TSmallintField
      FieldName = 'TIPO_FRETE_REDESPACHO'
      Origin = 'TIPO_FRETE_REDESPACHO'
    end
    object FDQcteLOCAL_COLETA_ID: TIntegerField
      FieldName = 'LOCAL_COLETA_ID'
      Origin = 'LOCAL_COLETA_ID'
      Required = True
    end
    object FDQcteLOCAL_ENTREGA_ID: TIntegerField
      FieldName = 'LOCAL_ENTREGA_ID'
      Origin = 'LOCAL_ENTREGA_ID'
      Required = True
    end
    object FDQcteCOBRADO_ATE_ID: TIntegerField
      FieldName = 'COBRADO_ATE_ID'
      Origin = 'COBRADO_ATE_ID'
    end
    object FDQctePAGO_POR_ID: TSmallintField
      FieldName = 'PAGO_POR_ID'
      Origin = 'PAGO_POR_ID'
      Required = True
    end
    object FDQctePAGO_POR: TIntegerField
      FieldName = 'PAGO_POR'
      Origin = 'PAGO_POR'
    end
    object FDQcteTRANSPORTE_ID: TIntegerField
      FieldName = 'TRANSPORTE_ID'
      Origin = 'TRANSPORTE_ID'
      Required = True
    end
    object FDQcteTARA: TBCDField
      FieldName = 'TARA'
      Origin = 'TARA'
      Precision = 18
    end
    object FDQcteTOTAL_QUANTIDADE: TBCDField
      FieldName = 'TOTAL_QUANTIDADE'
      Origin = 'TOTAL_QUANTIDADE'
      Precision = 18
    end
    object FDQcteTOTAL_PESOLIQUIDO: TBCDField
      FieldName = 'TOTAL_PESOLIQUIDO'
      Origin = 'TOTAL_PESOLIQUIDO'
      Precision = 18
    end
    object FDQcteTOTAL_PESOBRUTO: TBCDField
      FieldName = 'TOTAL_PESOBRUTO'
      Origin = 'TOTAL_PESOBRUTO'
      Precision = 18
    end
    object FDQcteTOTAL_MERCADORIA: TBCDField
      FieldName = 'TOTAL_MERCADORIA'
      Origin = 'TOTAL_MERCADORIA'
      Precision = 18
      Size = 2
    end
    object FDQctePESO_VOLUME: TFMTBCDField
      FieldName = 'PESO_VOLUME'
      Origin = 'PESO_VOLUME'
      Precision = 18
    end
    object FDQcteSEGURO: TBCDField
      FieldName = 'SEGURO'
      Origin = 'SEGURO'
      Precision = 18
      Size = 2
    end
    object FDQcteFRETE_VALOR: TBCDField
      FieldName = 'FRETE_VALOR'
      Origin = 'FRETE_VALOR'
      Precision = 18
      Size = 2
    end
    object FDQcteSEC_CAT: TBCDField
      FieldName = 'SEC_CAT'
      Origin = 'SEC_CAT'
      Precision = 18
      Size = 2
    end
    object FDQcteDESPACHO: TBCDField
      FieldName = 'DESPACHO'
      Origin = 'DESPACHO'
      Precision = 18
      Size = 2
    end
    object FDQctePEDAGIO: TBCDField
      FieldName = 'PEDAGIO'
      Origin = 'PEDAGIO'
      Precision = 18
      Size = 2
    end
    object FDQcteOUTROS: TBCDField
      FieldName = 'OUTROS'
      Origin = 'OUTROS'
      Precision = 18
      Size = 2
    end
    object FDQcteTOTAL_PRESTACAO: TBCDField
      FieldName = 'TOTAL_PRESTACAO'
      Origin = 'TOTAL_PRESTACAO'
      Precision = 18
      Size = 2
    end
    object FDQcteICMS_BASE: TBCDField
      FieldName = 'ICMS_BASE'
      Origin = 'ICMS_BASE'
      Precision = 18
      Size = 2
    end
    object FDQcteICMS_ALIQUOTA: TBCDField
      FieldName = 'ICMS_ALIQUOTA'
      Origin = 'ICMS_ALIQUOTA'
      Precision = 18
      Size = 2
    end
    object FDQcteICMS_VALOR: TBCDField
      FieldName = 'ICMS_VALOR'
      Origin = 'ICMS_VALOR'
      Precision = 18
      Size = 2
    end
    object FDQcteOBS_ICMS: TMemoField
      FieldName = 'OBS_ICMS'
      Origin = 'OBS_ICMS'
      BlobType = ftMemo
    end
    object FDQcteOBS_FRETE: TMemoField
      FieldName = 'OBS_FRETE'
      Origin = 'OBS_FRETE'
      BlobType = ftMemo
    end
    object FDQcteOBS: TMemoField
      FieldName = 'OBS'
      Origin = 'OBS'
      BlobType = ftMemo
    end
    object FDQctePRE_CTRC: TIntegerField
      FieldName = 'PRE_CTRC'
      Origin = 'PRE_CTRC'
    end
    object FDQcteCIA_NF: TIntegerField
      FieldName = 'CIA_NF'
      Origin = 'CIA_NF'
    end
    object FDQcteDATA_CARGA: TDateField
      FieldName = 'DATA_CARGA'
      Origin = 'DATA_CARGA'
    end
    object FDQcteHORA_CARGA: TTimeField
      FieldName = 'HORA_CARGA'
      Origin = 'HORA_CARGA'
    end
    object FDQcteDATA_INICIO: TDateField
      FieldName = 'DATA_INICIO'
      Origin = 'DATA_INICIO'
    end
    object FDQcteHORA_INICIO: TTimeField
      FieldName = 'HORA_INICIO'
      Origin = 'HORA_INICIO'
    end
    object FDQcteDATA_FIM: TDateField
      FieldName = 'DATA_FIM'
      Origin = 'DATA_FIM'
    end
    object FDQcteHORA_FIM: TTimeField
      FieldName = 'HORA_FIM'
      Origin = 'HORA_FIM'
    end
    object FDQcteDATA_DESCARGA: TDateField
      FieldName = 'DATA_DESCARGA'
      Origin = 'DATA_DESCARGA'
    end
    object FDQcteHORA_DESCARGA: TTimeField
      FieldName = 'HORA_DESCARGA'
      Origin = 'HORA_DESCARGA'
    end
    object FDQcteDATA_COMPROVANTE: TDateField
      FieldName = 'DATA_COMPROVANTE'
      Origin = 'DATA_COMPROVANTE'
    end
    object FDQcteMOTIVO_CANCEL: TMemoField
      FieldName = 'MOTIVO_CANCEL'
      Origin = 'MOTIVO_CANCEL'
      BlobType = ftMemo
    end
    object FDQcteCONTRATO_FRETE_ID: TIntegerField
      FieldName = 'CONTRATO_FRETE_ID'
      Origin = 'CONTRATO_FRETE_ID'
    end
    object FDQcteNSU_ITENS_ID: TIntegerField
      FieldName = 'NSU_ITENS_ID'
      Origin = 'NSU_ITENS_ID'
    end
    object FDQcteFORMULA_CALCULO_ID: TIntegerField
      FieldName = 'FORMULA_CALCULO_ID'
      Origin = 'FORMULA_CALCULO_ID'
      Required = True
    end
    object FDQcteTRANSPORTE_ORIGEM_ID: TIntegerField
      FieldName = 'TRANSPORTE_ORIGEM_ID'
      Origin = 'TRANSPORTE_ORIGEM_ID'
    end
    object FDQcteSEGURO_ALIQUOTA: TBCDField
      FieldName = 'SEGURO_ALIQUOTA'
      Origin = 'SEGURO_ALIQUOTA'
      Precision = 18
      Size = 2
    end
    object FDQcteICMS_SITUACAO: TSmallintField
      FieldName = 'ICMS_SITUACAO'
      Origin = 'ICMS_SITUACAO'
    end
    object FDQcteICMS_ISENTO: TSmallintField
      FieldName = 'ICMS_ISENTO'
      Origin = 'ICMS_ISENTO'
    end
    object FDQcteICMS_SOBRE_BASE: TBCDField
      FieldName = 'ICMS_SOBRE_BASE'
      Origin = 'ICMS_SOBRE_BASE'
      Precision = 18
      Size = 2
    end
    object FDQcteROTAS_ID: TIntegerField
      FieldName = 'ROTAS_ID'
      Origin = 'ROTAS_ID'
    end
    object FDQcteMIC_ID: TIntegerField
      FieldName = 'MIC_ID'
      Origin = 'MIC_ID'
    end
    object FDQcteHORA_EMISSAO: TTimeField
      FieldName = 'HORA_EMISSAO'
      Origin = 'HORA_EMISSAO'
    end
    object FDQcteCONTINGENCIA: TSmallintField
      FieldName = 'CONTINGENCIA'
      Origin = 'CONTINGENCIA'
    end
    object FDQcteHOMOLOGACAO: TSmallintField
      FieldName = 'HOMOLOGACAO'
      Origin = 'HOMOLOGACAO'
    end
    object FDQcteTIPO_CTE: TSmallintField
      FieldName = 'TIPO_CTE'
      Origin = 'TIPO_CTE'
    end
    object FDQcteTIPO_SERVICO: TSmallintField
      FieldName = 'TIPO_SERVICO'
      Origin = 'TIPO_SERVICO'
    end
    object FDQcteRETIRA_DESC: TStringField
      FieldName = 'RETIRA_DESC'
      Origin = 'RETIRA_DESC'
      Size = 60
    end
    object FDQcteCHAVE_CTE: TStringField
      FieldName = 'CHAVE_CTE'
      Origin = 'CHAVE_CTE'
      Size = 60
    end
    object FDQcteCARGA_FRACIONADA: TSmallintField
      FieldName = 'CARGA_FRACIONADA'
      Origin = 'CARGA_FRACIONADA'
    end
    object FDQcteICMS_CST: TStringField
      FieldName = 'ICMS_CST'
      Origin = 'ICMS_CST'
      FixedChar = True
      Size = 3
    end
    object FDQcteEH_CTE: TSmallintField
      FieldName = 'EH_CTE'
      Origin = 'EH_CTE'
    end
    object FDQcteCCT: TStringField
      FieldName = 'CCT'
      Origin = 'CCT'
      Size = 10
    end
    object FDQcteARQUIVO_CTE: TMemoField
      FieldName = 'ARQUIVO_CTE'
      Origin = 'ARQUIVO_CTE'
      BlobType = ftMemo
    end
    object FDQcteSUB_SERIE: TStringField
      FieldName = 'SUB_SERIE'
      Origin = 'SUB_SERIE'
      Size = 10
    end
    object FDQcteCHAVE_CTE_REF: TStringField
      FieldName = 'CHAVE_CTE_REF'
      Origin = 'CHAVE_CTE_REF'
      Size = 60
    end
    object FDQcteINF_ADICIONAL_ID: TIntegerField
      FieldName = 'INF_ADICIONAL_ID'
      Origin = 'INF_ADICIONAL_ID'
    end
    object FDQcteSTATUS_DOC_ELETRONICO: TSmallintField
      FieldName = 'STATUS_DOC_ELETRONICO'
      Origin = 'STATUS_DOC_ELETRONICO'
    end
    object FDQctePROTOCOLO_SEFAZ: TStringField
      FieldName = 'PROTOCOLO_SEFAZ'
      Origin = 'PROTOCOLO_SEFAZ'
      Size = 60
    end
    object FDQctePROTOCOLO_CANCEL_SEFAZ: TStringField
      FieldName = 'PROTOCOLO_CANCEL_SEFAZ'
      Origin = 'PROTOCOLO_CANCEL_SEFAZ'
      Size = 60
    end
    object FDQcteTOTAL_PESOCUBADO: TBCDField
      FieldName = 'TOTAL_PESOCUBADO'
      Origin = 'TOTAL_PESOCUBADO'
      Precision = 18
    end
    object FDQcteTARIFA: TFMTBCDField
      FieldName = 'TARIFA'
      Origin = 'TARIFA'
      Precision = 18
    end
    object FDQctePEDIDO_FRETE_ID: TIntegerField
      FieldName = 'PEDIDO_FRETE_ID'
      Origin = 'PEDIDO_FRETE_ID'
    end
    object FDQcteDESCONTO: TBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Precision = 18
      Size = 2
    end
    object FDQcteTABELA_PRECO_ID: TIntegerField
      FieldName = 'TABELA_PRECO_ID'
      Origin = 'TABELA_PRECO_ID'
    end
    object FDQcteICMS_VALOR_CRED_OUT_PRES: TBCDField
      FieldName = 'ICMS_VALOR_CRED_OUT_PRES'
      Origin = 'ICMS_VALOR_CRED_OUT_PRES'
      Precision = 18
      Size = 2
    end
    object FDQctePREVISAO_DESCARGA: TSmallintField
      FieldName = 'PREVISAO_DESCARGA'
      Origin = 'PREVISAO_DESCARGA'
    end
    object FDQcteDATA_DESCARGA_FIM: TDateField
      FieldName = 'DATA_DESCARGA_FIM'
      Origin = 'DATA_DESCARGA_FIM'
    end
    object FDQcteHORA_DESCARGA_FIM: TTimeField
      FieldName = 'HORA_DESCARGA_FIM'
      Origin = 'HORA_DESCARGA_FIM'
    end
    object FDQcteTIPO_HORA_DESCARGA: TSmallintField
      FieldName = 'TIPO_HORA_DESCARGA'
      Origin = 'TIPO_HORA_DESCARGA'
    end
    object FDQcteTIPO_DATA_DESCARGA: TSmallintField
      FieldName = 'TIPO_DATA_DESCARGA'
      Origin = 'TIPO_DATA_DESCARGA'
    end
    object FDQcteCIOT: TStringField
      FieldName = 'CIOT'
      Origin = 'CIOT'
      Size = 60
    end
    object FDQcteOUTRO_TOMADOR_SERV_ID: TIntegerField
      FieldName = 'OUTRO_TOMADOR_SERV_ID'
      Origin = 'OUTRO_TOMADOR_SERV_ID'
    end
    object FDQcteENDERECO_OUTRO_TOMADOR_SERV_ID: TIntegerField
      FieldName = 'ENDERECO_OUTRO_TOMADOR_SERV_ID'
      Origin = 'ENDERECO_OUTRO_TOMADOR_SERV_ID'
    end
    object FDQcteVALOR_RECEBER: TBCDField
      FieldName = 'VALOR_RECEBER'
      Origin = 'VALOR_RECEBER'
      Precision = 18
      Size = 2
    end
    object FDQcteTOTAL_TRIBUTOS: TBCDField
      FieldName = 'TOTAL_TRIBUTOS'
      Origin = 'TOTAL_TRIBUTOS'
      Precision = 18
      Size = 2
    end
    object FDQcteSEC_CAT_DESC: TStringField
      FieldName = 'SEC_CAT_DESC'
      Origin = 'SEC_CAT_DESC'
      Size = 60
    end
    object FDQcteDESPACHO_DESC: TStringField
      FieldName = 'DESPACHO_DESC'
      Origin = 'DESPACHO_DESC'
      Size = 60
    end
    object FDQcteOUTROS_DESC: TStringField
      FieldName = 'OUTROS_DESC'
      Origin = 'OUTROS_DESC'
      Size = 60
    end
    object FDQcteDESCONTO_DESC: TStringField
      FieldName = 'DESCONTO_DESC'
      Origin = 'DESCONTO_DESC'
      Size = 60
    end
    object FDQcteCTE_TIPO_EMISSAO: TSmallintField
      FieldName = 'CTE_TIPO_EMISSAO'
      Origin = 'CTE_TIPO_EMISSAO'
    end
    object FDQcteSUBCONTRATACAO_ID: TIntegerField
      FieldName = 'SUBCONTRATACAO_ID'
      Origin = 'SUBCONTRATACAO_ID'
    end
    object FDQcteNATUREZA_CARGA_ID: TIntegerField
      FieldName = 'NATUREZA_CARGA_ID'
      Origin = 'NATUREZA_CARGA_ID'
    end
    object FDQcteOUTRAS_CARACTERISTICAS: TStringField
      FieldName = 'OUTRAS_CARACTERISTICAS'
      Origin = 'OUTRAS_CARACTERISTICAS'
      Size = 30
    end
    object FDQctePARCEIRO_NEGOCIO_COLETA_ID: TIntegerField
      FieldName = 'PARCEIRO_NEGOCIO_COLETA_ID'
      Origin = 'PARCEIRO_NEGOCIO_COLETA_ID'
    end
    object FDQctePARCEIRO_NEGOCIO_ENTREGA_ID: TIntegerField
      FieldName = 'PARCEIRO_NEGOCIO_ENTREGA_ID'
      Origin = 'PARCEIRO_NEGOCIO_ENTREGA_ID'
    end
    object FDQcteCARACTERISTICA_ADICIONAL: TStringField
      FieldName = 'CARACTERISTICA_ADICIONAL'
      Origin = 'CARACTERISTICA_ADICIONAL'
      Size = 15
    end
    object FDQcteCARACTERISTICA_SERVICO: TStringField
      FieldName = 'CARACTERISTICA_SERVICO'
      Origin = 'CARACTERISTICA_SERVICO'
      Size = 30
    end
    object FDQcteE_MAIL_ENVIADO: TSmallintField
      FieldName = 'E_MAIL_ENVIADO'
      Origin = 'E_MAIL_ENVIADO'
    end
    object FDQcteDATA_PREV_ENTREGA: TDateField
      FieldName = 'DATA_PREV_ENTREGA'
      Origin = 'DATA_PREV_ENTREGA'
    end
    object FDQcteVERSAO_CTE: TSmallintField
      FieldName = 'VERSAO_CTE'
      Origin = 'VERSAO_CTE'
    end
    object FDQcteNF_DEVOLUCAO_ID: TIntegerField
      FieldName = 'NF_DEVOLUCAO_ID'
      Origin = 'NF_DEVOLUCAO_ID'
    end
    object FDQcteICMS_BASE_UF_FIM: TBCDField
      FieldName = 'ICMS_BASE_UF_FIM'
      Origin = 'ICMS_BASE_UF_FIM'
      Precision = 18
      Size = 2
    end
    object FDQcteICMS_ALIQUOTA_UF_FIM: TBCDField
      FieldName = 'ICMS_ALIQUOTA_UF_FIM'
      Origin = 'ICMS_ALIQUOTA_UF_FIM'
      Precision = 18
      Size = 2
    end
    object FDQcteICMS_ALIQUOTA_INTER: TBCDField
      FieldName = 'ICMS_ALIQUOTA_INTER'
      Origin = 'ICMS_ALIQUOTA_INTER'
      Precision = 18
      Size = 2
    end
    object FDQcteICMS_ALIQUOTA_PARTILHA: TSmallintField
      FieldName = 'ICMS_ALIQUOTA_PARTILHA'
      Origin = 'ICMS_ALIQUOTA_PARTILHA'
    end
    object FDQcteICMS_VALOR_UF_INI: TBCDField
      FieldName = 'ICMS_VALOR_UF_INI'
      Origin = 'ICMS_VALOR_UF_INI'
      Precision = 18
      Size = 2
    end
    object FDQcteICMS_VALOR_UF_FIM: TBCDField
      FieldName = 'ICMS_VALOR_UF_FIM'
      Origin = 'ICMS_VALOR_UF_FIM'
      Precision = 18
      Size = 2
    end
    object FDQcteICMS_ALIQUOTA_FCP_UF_DEST: TBCDField
      FieldName = 'ICMS_ALIQUOTA_FCP_UF_DEST'
      Origin = 'ICMS_ALIQUOTA_FCP_UF_DEST'
      Precision = 18
      Size = 2
    end
    object FDQcteICMS_VALOR_FCP_UF_DEST: TBCDField
      FieldName = 'ICMS_VALOR_FCP_UF_DEST'
      Origin = 'ICMS_VALOR_FCP_UF_DEST'
      Precision = 18
      Size = 2
    end
    object FDQcteCONSUMIDOR_FINAL: TSmallintField
      FieldName = 'CONSUMIDOR_FINAL'
      Origin = 'CONSUMIDOR_FINAL'
    end
    object FDQcteCONTEINER_ARMADOR: TStringField
      FieldName = 'CONTEINER_ARMADOR'
      Origin = 'CONTEINER_ARMADOR'
      Size = 30
    end
    object FDQcteCONTEINER_NUMERO: TStringField
      FieldName = 'CONTEINER_NUMERO'
      Origin = 'CONTEINER_NUMERO'
      Size = 30
    end
    object FDQcteCONTEINER_NAVIO: TStringField
      FieldName = 'CONTEINER_NAVIO'
      Origin = 'CONTEINER_NAVIO'
      Size = 100
    end
    object FDQcteCONTEINER_BOOKING: TStringField
      FieldName = 'CONTEINER_BOOKING'
      Origin = 'CONTEINER_BOOKING'
      Size = 30
    end
    object FDQcteCONTEINER_DEADLINE: TDateField
      FieldName = 'CONTEINER_DEADLINE'
      Origin = 'CONTEINER_DEADLINE'
    end
    object FDQcteCONTEINER_VALOR: TBCDField
      FieldName = 'CONTEINER_VALOR'
      Origin = 'CONTEINER_VALOR'
      Precision = 18
      Size = 2
    end
    object FDQcteQUANTIDADE_CARGA_OS: TBCDField
      FieldName = 'QUANTIDADE_CARGA_OS'
      Origin = 'QUANTIDADE_CARGA_OS'
      Precision = 18
    end
    object FDQcteMODELO: TSmallintField
      FieldName = 'MODELO'
      Origin = 'MODELO'
    end
    object FDQctePARCEIRO_NEGOCIO_IE_ST_ID: TIntegerField
      FieldName = 'PARCEIRO_NEGOCIO_IE_ST_ID'
      Origin = 'PARCEIRO_NEGOCIO_IE_ST_ID'
    end
    object FDQcteGLOBALIZADO: TSmallintField
      FieldName = 'GLOBALIZADO'
      Origin = 'GLOBALIZADO'
    end
    object FDQcteOBS_GLOBALIZADO: TStringField
      FieldName = 'OBS_GLOBALIZADO'
      Origin = 'OBS_GLOBALIZADO'
      Size = 256
    end
    object FDQctePIS_VALOR: TBCDField
      FieldName = 'PIS_VALOR'
      Origin = 'PIS_VALOR'
      Precision = 18
      Size = 2
    end
    object FDQcteCOFINS_VALOR: TBCDField
      FieldName = 'COFINS_VALOR'
      Origin = 'COFINS_VALOR'
      Precision = 18
      Size = 2
    end
    object FDQcteIR_VALOR: TBCDField
      FieldName = 'IR_VALOR'
      Origin = 'IR_VALOR'
      Precision = 18
      Size = 2
    end
    object FDQcteINSS_VALOR: TBCDField
      FieldName = 'INSS_VALOR'
      Origin = 'INSS_VALOR'
      Precision = 18
      Size = 2
    end
    object FDQcteCSLL_VALOR: TBCDField
      FieldName = 'CSLL_VALOR'
      Origin = 'CSLL_VALOR'
      Precision = 18
      Size = 2
    end
    object FDQcteVALOR_CARGA_AVERBADA: TBCDField
      FieldName = 'VALOR_CARGA_AVERBADA'
      Origin = 'VALOR_CARGA_AVERBADA'
      Precision = 18
      Size = 2
    end
  end
  object FDQupdate: TFDQuery
    Connection = FDsyscon
    SQL.Strings = (
      #39'update ctrc    '#39'+'
      #39'set '#39'+'
      #39' frete_valor = '#39'+variavel4+'#39' ,'#39'+'
      #39' icms_base='#39'+variavel5+'#39'  ,'#39'+'
      #39' icms_aliquota='#39'+variavel6+'#39'  ,'#39'+'
      #39' icms_valor='#39'+variavel7+'#39'  ,'#39'+'
      #39' total_prestacao= '#39'+variavel8+'#39' '#39'+'
      #39' where ctrc.id = '#39'+fdq'#39'+);')
    Left = 592
    Top = 640
  end
  object DataSource1: TDataSource
    DataSet = CDSimportar
    Left = 728
    Top = 584
  end
  object CDSimportar: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 656
    Top = 584
    object CDSimportarViagem: TStringField
      FieldName = 'Viagem'
      Size = 60
    end
    object CDSimportarData: TStringField
      FieldName = 'Data'
      Size = 60
    end
    object CDSimportarNrplaca: TStringField
      FieldName = 'Nr. placa'
      Size = 60
    end
    object CDSimportarValordeFrete: TStringField
      FieldName = 'Valor de Frete'
      Size = 60
    end
    object CDSimportarBasedecálculo: TStringField
      FieldName = 'Base de c'#225'lculo'
      Size = 60
    end
    object CDSimportarAlíquota: TStringField
      FieldName = 'Al'#237'quota'
      Size = 60
    end
    object CDSimportarValorICMS: TStringField
      FieldName = 'Valor ICMS'
      Size = 60
    end
    object CDSimportarTotaldaPrestação: TStringField
      FieldName = 'Total da Presta'#231#227'o'
      Size = 60
    end
    object CDSimportarNFs: TStringField
      FieldName = 'NFs'
      Size = 60
    end
    object CDSimportarCTE: TStringField
      FieldName = 'CTE'
      Size = 60
    end
    object CDSimportarData2: TStringField
      FieldName = 'Data.'
      Size = 60
    end
    object CDSimportarChavedeacesso: TStringField
      FieldName = 'Chave de acesso'
      Size = 100
    end
    object CDSimportarNºprotocolo: TStringField
      FieldName = 'N'#186' protocolo'
      Size = 60
    end
  end
  object FDQchave: TFDQuery
    Connection = FDsyscon
    SQL.Strings = (
      ''
      ' select ctrc.id, ctrc.chave_cte, ctrc.numero'
      ' , ctrc.data_emissao, ctrc.tipo_situacao, ctrc.serie'
      ' , ctrc.empresa_id'
      
        ' , (select substring(ctrc_xml.xml from (position('#39'<nProt>'#39',ctrc_' +
        'xml.xml)+7)'
      
        ' for (position('#39'</nProt>'#39',ctrc_xml.xml) - (position('#39'<nProt>'#39',ct' +
        'rc_xml.xml)+7)))'
      ' from ctrc_xml where (ctrc_xml.ctrc_id = ctrc.id)'
      ' and (position('#39'<nProt>'#39',ctrc_xml.xml) > 0)) protocolo'
      
        ' from ctrc where ctrc.numero = 267  and ( ctrc.tipo_situacao in(' +
        '0,2))'
      '')
    Left = 800
    Top = 584
    object FDQchaveID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQchaveCHAVE_CTE: TStringField
      FieldName = 'CHAVE_CTE'
      Origin = 'CHAVE_CTE'
      Size = 60
    end
    object FDQchaveNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
    end
    object FDQchaveDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      Origin = 'DATA_EMISSAO'
    end
    object FDQchaveTIPO_SITUACAO: TSmallintField
      FieldName = 'TIPO_SITUACAO'
      Origin = 'TIPO_SITUACAO'
    end
    object FDQchaveSERIE: TStringField
      FieldName = 'SERIE'
      Origin = 'SERIE'
      Required = True
      Size = 10
    end
    object FDQchaveEMPRESA_ID: TIntegerField
      FieldName = 'EMPRESA_ID'
      Origin = 'EMPRESA_ID'
      Required = True
    end
    object FDQchavePROTOCOLO: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'PROTOCOLO'
      Origin = 'PROTOCOLO'
      ProviderFlags = []
      ReadOnly = True
      BlobType = ftMemo
    end
  end
  object FDQveic: TFDQuery
    Connection = FDsyscon
    SQL.Strings = (
      'select veiculo.cap_carga'
      'from veiculo'
      'where veiculo.id = 1')
    Left = 648
    Top = 640
  end
end
