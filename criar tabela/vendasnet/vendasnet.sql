

CREATE TABLE  public.dim_vendasnet
(
    idproduto integer,
    data date,
    idcliente integer,
    idterritoriovendas integer,
    ordemvendas character varying(7) ,
    custototalproduto integer,
    quantidadevendas integer
);
