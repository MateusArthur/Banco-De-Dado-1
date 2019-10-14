#Comandos uties sql

select nome from aluno where dtnasc = (select mint(dtnasc) from aluno where codc = 11);

select a.nome from (select min(dtnasc) as eldery from aluno where codc = 11) t join aluno a on t.eldery = a.dtnasc where a.code = 11;

select nomep, sum(qtdade) from exp group by 1;

explain select distinct p.nome from filme f  join pessoa p on(f.codd = p.codp) join elenco e on (e.codp = p.codp);

select nome from pessoa p natural join elenco e intersect select nome from pessoa p join filme f on p.codp = f.codd;

select f.titulo from filme f natural join elenco e group by f.titulo having count(*) = (select max (t.maior) from (select count(*) as maior from elenco group by codf) t);
