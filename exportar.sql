--------------------------------------------------------
--  Arquivo criado - Segunda-feira-Março-29-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Function FNC_PRODUTO_ENTRADA_DISPONIVEL
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "PONTOSCONTOS"."FNC_PRODUTO_ENTRADA_DISPONIVEL" (p_id_produto number) return varchar2 is

    cursor c_disponivel is
    select 1
    from   tb_processo_item pi,
           tb_processo      p
    where  p.id_processo = pi.id_processo
    and    p.ind_situacao = 'O'
    and    pi.id_produto = p_id_produto;

    v_existe number;
    v number;
begin

    open c_disponivel;
    fetch c_disponivel into v_existe;
    close c_disponivel;

    if v_existe is null then
        return 'S';
    else
        return 'N';
    end if;

end;

/
