create table systems (
sst_id number constraint sst_primary_key primary key,
sst_name varchar2(20) not null,
sst_description varchar2(50) not null,
sst_lead_technologies varchar2(100) not null
);
commit;

CREATE SEQUENCE systems_seq
 START WITH     6
 INCREMENT BY   1
 NOCACHE
 NOCYCLE;

 commit;

create table contracts (
cnt_id number constraint cnt_primary_key PRIMARY key,
cnt_number varchar2(20) not null,
cnt_date_from VARCHAR2(10) not null,
cnt_date_to varchar2(10) not null,
cnt_amount varchar2(30) not null,
cnt_billing_cycle varchar2(20) not null,
cnt_is_active varchar2(3) not null,
sst_id number not null
);
commit;

CREATE SEQUENCE contracts_seq
 START WITH     6
 INCREMENT BY   1
 NOCACHE
 NOCYCLE;

 commit;

alter table contracts add constraint fk_sst_id foreign key (sst_id) REFERENCES systems(sst_id);
commit;


