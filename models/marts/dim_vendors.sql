with trips_unioned as (
    select * from {{ref('int_trips_unioned')}}
),

vendors as (
    select distinct vendor_id, {{get_vendor_names('vendor_id')}} as vendor_name
    from trips_unioned
)
select * from  vendors

--1 = Creative Mobile Technologies, LLC
--2 = Curb Mobility, LLC
--6 = Myle Technologies Inc
--7 = Helix
