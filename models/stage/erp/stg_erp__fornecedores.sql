with
    fonte_fornecedores as (
        select
            cast(supplier_id as int) as id_fornecedor
            , cast(contact_name as string) as nome_fornecedor
            , cast(company_name as string) as empresa_fornecedor
            --, contact_title
            , cast(address as string) as endereco_fornecedor
            , cast(postal_code as string) as cep_fornecedor
            , cast(city as string) as cidade_fornecedor
            , cast(region as string) as regiao_fornecedor
            , cast(country as string) as pais_fornecedor
            --, fax
            --, phone
            --, homepage
            from {{ source('erp', 'suppliers') }}
    )

select *
from fonte_fornecedores