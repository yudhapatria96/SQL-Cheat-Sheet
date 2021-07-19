create table batch_6.user_yudha(id INT, nama VARCHAR, ktp INT)

insert into batch_6.user_yudha (nama, id) values ('yudha',3)

update batch_6.user_yudha set ktp =55788 where id = 3

select * from batch_6.user_yudha

alter table batch_6.user_yudha add nomor_serial SERIAL primary key 

alter table batch_6.user_yudha add nomor_serial SERIAL primary key, add kota varchar


alter table batch_6.user_yudha drop column id

insert into batch_6.user_yudha values (3, 'Yudha', 52142)

delete from batch_6.user_yudha where nama = 'Yudha'

truncate table batch_6.user_yudha

drop table batch_6.user_coba_y 