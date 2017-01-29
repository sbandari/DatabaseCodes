--To drop the users if any existing user adn creating users
Drop user DBSEC_ADMIN cascade;
create user DBSEC_ADMIN
identified by tec5363admin
default tablespace USERS
temporary tablespace TEMP
profile default;

Drop user DBSEC_CLERK cascade;
create user DBSEC_CLERK
identified by tec5363clerk
default tablespace USERS
temporary tablespace TEMP
profile default; 

Drop user DBSEC_DEV cascade;
create user DBSEC_DEV
identified by tec5363$dev
default tablespace USERS
temporary tablespace TEMP
profile default;

--to create profiles 
Drop profile DBSEC_ADMIN_PROF cascade;
create profile DBSEC_ADMIN_PROF limit
sessions_per_user 5
connect_time 480
idle_time 60
password_life_time 30
password_grace_time 7;

Drop profile DBSEC_DEV_PROF cascade;
create profile DBSEC_DEV_PROF limit
connect_time 120
idle_time 120
CPU_PER_CALL 6000
password_life_time 30
password_grace_time 14;

Drop profile DBSEC_CLERK_PROF cascade;
create profile DBSEC_CLERK_PROF limit
sessions_per_user 1
cpu_per_call 500
connect_time 480
idle_time 30
logical_reads_per_call 100
failed_login_attempts 3
password_life_time 30
password_lock_time 3
password_grace_time 14;

--creating role and privileges

drop role DBSEC_ADMIN_ROLE;
create role DBSEC_ADMIN_ROLE;
grant select, alter on DBSEC.supplier to DBSEC_ADMIN_ROLE;
grant select, alter on DBSEC.shipment_method to DBSEC_ADMIN_ROLE;
grant select, alter on DBSEC.departments to DBSEC_ADMIN_ROLE;
grant select, alter on DBSEC.jobs to DBSEC_ADMIN_ROLE;
grant select, alter on DBSEC.employees to DBSEC_ADMIN_ROLE;
grant select, alter on DBSEC.sales_commission to DBSEC_ADMIN_ROLE;
grant select, alter on DBSEC.promotions to DBSEC_ADMIN_ROLE;
grant select, alter on DBSEC.categories to DBSEC_ADMIN_ROLE;
grant select, alter on DBSEC.products to DBSEC_ADMIN_ROLE;
grant select, alter on DBSEC.product_supplier to DBSEC_ADMIN_ROLE;
grant select, alter on DBSEC.product_prices to DBSEC_ADMIN_ROLE;
grant select, alter on DBSEC.product_inventory to DBSEC_ADMIN_ROLE;
grant select, alter on DBSEC.payment_method to DBSEC_ADMIN_ROLE;
grant select, alter on DBSEC.customers to DBSEC_ADMIN_ROLE;
grant select, alter on DBSEC.orders to DBSEC_ADMIN_ROLE;
grant select, alter on DBSEC.order_lines to DBSEC_ADMIN_ROLE;
grant select, alter on DBSEC.employee_ranks to DBSEC_ADMIN_ROLE;


drop role DBSEC_CLERK_ROLE;
create role DBSEC_CLERK_ROLE;
grant select, insert, update on DBSEC.supplier to DBSEC_CLERK_ROLE;
grant select, insert, update on DBSEC.shipment_method to DBSEC_CLERK_ROLE;
grant select, insert, update on DBSEC.departments to DBSEC_CLERK_ROLE;
grant select, insert, update on DBSEC.jobs to DBSEC_CLERK_ROLE;
grant select, insert, update on DBSEC.employees to DBSEC_CLERK_ROLE;
grant select, insert, update on DBSEC.sales_commission to DBSEC_CLERK_ROLE;
grant select, insert, update on DBSEC.promotions to DBSEC_CLERK_ROLE;
grant select, insert, update on DBSEC.categories to DBSEC_CLERK_ROLE;
grant select, insert, update on DBSEC.products to DBSEC_CLERK_ROLE;
grant select, insert, update on DBSEC.product_supplier to DBSEC_CLERK_ROLE;
grant select, insert, update on DBSEC.product_prices to DBSEC_CLERK_ROLE;
grant select, insert, update on DBSEC.product_inventory to DBSEC_CLERK_ROLE;
grant select, insert, update on DBSEC.payment_method to DBSEC_CLERK_ROLE;
grant select, insert, update on DBSEC.customers to DBSEC_CLERK_ROLE;
grant select, insert, update on DBSEC.orders to DBSEC_CLERK_ROLE;
grant select, alter on DBSEC.order_lines to DBSEC_CLERK_ROLE;
grant select, alter on DBSEC.employee_ranks to DBSEC_CLERK_ROLE;

drop role DBSEC_SUPERVISOR_ROLE;
create role DBSEC_SUPERVISOR_ROLE;
grant select, insert, update, delete on DBSEC.supplier to DBSEC_SUPERVISOR_ROLE;
grant select, insert, update, delete on DBSEC.shipment_method to DBSEC_SUPERVISOR_ROLE;
grant select, insert, update, delete on DBSEC.departments to DBSEC_SUPERVISOR_ROLE;
grant select, insert, update, delete on DBSEC.jobs to DBSEC_SUPERVISOR_ROLE;
grant select, insert, update, delete on DBSEC.sales_commission to DBSEC_SUPERVISOR_ROLE;
grant select, insert, update, delete on DBSEC.promotions to DBSEC_SUPERVISOR_ROLE;
grant select, insert, update, delete on DBSEC.categories to DBSEC_SUPERVISOR_ROLE;
grant select, insert, update, delete on DBSEC.products to DBSEC_SUPERVISOR_ROLE;
grant select, insert, update, delete on DBSEC.product_supplier to DBSEC_SUPERVISOR_ROLE;
grant select, insert, update, delete on DBSEC.product_prices to DBSEC_SUPERVISOR_ROLE;
grant select, insert, update, delete on DBSEC.product_inventory to DBSEC_SUPERVISOR_ROLE;
grant select, insert, update, delete on DBSEC.payment_method to DBSEC_SUPERVISOR_ROLE;
grant select, insert, update, delete on DBSEC.customers to DBSEC_SUPERVISOR_ROLE;
grant select, insert, update, delete on DBSEC.order_lines to DBSEC_SUPERVISOR_ROLE;
grant select, insert, update, delete on DBSEC.employee_ranks to DBSEC_SUPERVISOR_ROLE;

drop role DBSEC_QUERY_ROLE;
create role DBSEC_QUERY_ROLE;
grant select on DBSEC.customers to DBSEC_QUERY_ROLE;


--assigning roles and profiles to the users
alter user DBSEC_ADMIN profile DBSEC_ADMIN_PROF;
grant DBSEC_ADMIN_ROLE to DBSEC_ADMIN;

alter user DBSEC_CLERK profile DBSEC_CLERK_PROF;
grant DBSEC_CLERK_ROLE to DBSEC_CLERK;

alter user DBSEC_DEV profile DBSEC_DEV_PROF;
grant DBSEC_ADMIN_ROLE to DBSEC_DEV;
grant DBSEC_SUPERVISOR_ROLE to DBSEC_DEV; 

GRANT CREATE SESSION TO DBSEC_CLERK;


--connecting dbsec_clerk 
connect DBSEC_CLERK

--simple query on supplier table 
select supplier_id from DBSEC.supplier;
 