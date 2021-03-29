--------------------------------------------------------
--  Arquivo criado - Segunda-feira-Mar�o-29-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Function FUN_REMOVE_CHAR_ESP2
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "PONTOSCONTOS"."FUN_REMOVE_CHAR_ESP2" (texto in varchar2) return varchar2 is

    begin
      return translate(texto,'������������������������������������������������.-!"''`#$%().:[/]{}�+?;����*<>','NAEIOUAEIOUAEIOUAOAEIOUCnaeiouaeiouaeiouaoaeiouc');
    end;

/
