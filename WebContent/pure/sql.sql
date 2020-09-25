select * from total_model;

select * from total_model where category='oil' and ingre_avg<4 and rownum<4 order by ingre_avg;