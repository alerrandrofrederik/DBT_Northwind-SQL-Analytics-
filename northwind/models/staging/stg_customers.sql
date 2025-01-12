--import
with cte as (
    select * from {{ ref('raw_customers') }}
),

--renamed
renamed as (
    select 
        customer_id as id,
        company_name,
        contact_name,
        contact_title,
        address,
        city,
        region,
        postal_code,
        country,
        phone,
        fax
    from cte
)

--select
select * from renamed