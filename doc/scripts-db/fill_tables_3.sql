insert into SYSTEMS (sst_id, sst_name, sst_description, sst_lead_technologies)
values (1, 'superOS', 'Super OS! Always works!', 'Java and other Oracle staff');

insert into CONTRACTS (CNT_ID, cnt_number, cnt_date_from, cnt_date_to, cnt_amount, cnt_billing_cycle, cnt_is_active, sst_id)
values (1, '1/2018', '2018-11-22', '2021-11-22', '5000 pln nett', 'month', 'yes', 1);

insert into SYSTEMS (sst_id, sst_name, sst_description, sst_lead_technologies)
values (2, 'goodOS', 'Quite good OS.', 'Windows 10 and other Microsoft staff');

insert into CONTRACTS (CNT_ID, cnt_number, cnt_date_from, cnt_date_to, cnt_amount, cnt_billing_cycle, cnt_is_active, sst_id)
values (2, '2/2018', '2018-11-23', '2023-11-23', '10000 pln nett', 'quarter', 'yes', 2);

insert into SYSTEMS (sst_id, sst_name, sst_description, sst_lead_technologies)
values (3, 'bestOS', 'The best OS.', 'Ubuntu and other Linux staff');

insert into CONTRACTS (CNT_ID, cnt_number, cnt_date_from, cnt_date_to, cnt_amount, cnt_billing_cycle, cnt_is_active, sst_id)
values (3, '3/2018', '2018-12-01', '2023-11-30', '12000 pln nett', 'quarter', 'yes', 3);

insert into SYSTEMS (sst_id, sst_name, sst_description, sst_lead_technologies)
values (4, 'alternativeOS', 'Alternative OS.', 'Alternative techonologies');

insert into CONTRACTS (CNT_ID, cnt_number, cnt_date_from, cnt_date_to, cnt_amount, cnt_billing_cycle, cnt_is_active, sst_id)
values (4, '4/2018', '2018-12-01', '2023-11-30', '3000 pln nett', 'month', 'no', 4);

insert into CONTRACTS (CNT_ID, cnt_number, cnt_date_from, cnt_date_to, cnt_amount, cnt_billing_cycle, cnt_is_active, sst_id)
values (5, '5/2018', '2018-12-02', '2020-11-30', '2000 pln nett', 'month', 'yes', 3);

insert into SYSTEMS (sst_id, sst_name, sst_description, sst_lead_technologies)
values (5, 'newOS', 'New OS.', 'New technologies');

commit;











