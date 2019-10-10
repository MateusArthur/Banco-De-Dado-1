1. Altere o comentário Uau! Tooke my breath away!!! para Uau! Took my breath away!!!

    R: update avaliacao set coment = 'Uau! Took my breath away!!!' where coment='Uau! Tooke my breath away!!!'; 

2. Insira o comentário do usuário jaws@gmail.com para o filme Jaws: Super fã dos filmes Tubarão.
Ele deu 5 estrelas.

    R: select f.codf from filmes f where f.titulo = 'Jaws';
      Insert Into avaliacao(codf, email, nestrelas, coment) values (30, 'jaws@gmail.com', 5, 'Super fa dos filmes Tubarão');

3. Execute o seguinte insert:
insert into elenco (codf, codp, papel, oscar) values (30,177,’figur’,’N’);
Analise a mensagem de erro e conserte o problema para que o comando acima seja re-executado da
mesma forma que está escrito

    R: Falta a chave estrangeira codp = 177 na table pessoas
        insert into pessoa(codp, nome, dtnasc, paisn) values(177, 'Gv', '10-10-2010', 'Brazil'); 

4. Retornar os nomes dos filmes com os nomes dos respectivos diretores

    R: select f.titulo, p.nome from filme f join pessoa p on f.codd = p.codp;

5. Retornar os nomes dos filmes dirigidos por Alfred
    
    R: select f.titulo filme f join pessoa p on f.codd = p.codp where p.nome = 'Alfred';
  
6. Retorne os nomes dos atores que já receberam um oscar (oscar=’Y’).
    
    OBS: distinct remover os duplicados 
    R: Select distinct p.nome from pessoa p natural join elenco e where e.oscar = 'Y';

7. Retorne os nomes, anos de lançamento, duração dos filmes bem com os nomes dos atores que
fizeram parte do elenco

    R: select f.titulo, f.anol, f.dur, p.nome from elenco e natural join filme f natural join pessoa p;
    // Se tiver um filme sem elenco deve ser usado o left join para retornar null
    select f.titulo, f.anol, f.dur, p.nome from filme f natural  left join elenco e natural left join  pessoa p; 
    
    
8. Retornar os nomes dos filmes que receberam 5 estrelas na avaliação
  
    R: select f.titulo from filme f natural join avaliacao a where a.nestrelas = 5;

9. Retornar os nomes dos filmes que o ator Steven fez parte do elenco

    R: select f.titulo from filme f natural join elenco e natural join pessoa p where p.nome = 'Steven';
    
    
10. Retornar os nomes de todos os atores cadastros e os filmes que eles foram elenco, caso
existirem.
  
    R: select p.nome, f.filme from pessoa p natural join elenco e natural left join filme f;
    
11. Retornar os nomes das pessoas que não participaram de nenhum filme

    R: select p.nome from pessoa p natural left join elenco e where e.oscar is null;
    //Outra forma 
      select p.nome from pessoa p where p.codp not in (select codp from elenco);
    
12. Retornar, caso existe, um filme que não possua nenhuma avaliação

    R: 

13. Retornar o nome e a duração dos filmes que foram lançados nos anos 1960


14. Retornar os nomes dos atores que já tiveram o papel de figur em qualquer filme
15. Retornar quantos comentários o usuário cinefilo@gmail.com fez.
16. Retornar o país e a quantidade de atores cadastrados nele
17. Retornar a pessoa mais velha cadastrada (pode existir mais de 1)
18. Retornar o filme com a menor duração (pode existir mais de 1)
19. Retornar o nome do filme e número de atores no elenco
20. Retornar o nome do filme e a média de número de estrela recebidas
