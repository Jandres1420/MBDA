insert into Participante(tid,nid,email,pais,fRegistro,fRetiro) values ('cc','955061451068998','rcarnall0@istockphoto.com','Afghanistan',TO_DATE('2019/05/30','YYYY/MM/DD'),TO_DATE('2019/06/30','YYYY/MM/DD'));
insert into Participante(tid,nid,email,pais,fRegistro,fRetiro) values ('cc','862073803381840','lreitenbach1@ning.com','Poland',TO_DATE('2019/05/11','YYYY/MM/DD'), TO_DATE('2019/07/08','YYYY/MM/DD'));
insert into Participante (tid,nid,email,pais,fRegistro,fRetiro) values('cc','050048822170111','jkibbe2@infoseek.co','China',TO_DATE('2019/06/12','YYYY/MM/DD'), TO_DATE('2019/06/07','YYYY/MM/DD'));
insert into Participante(tid,nid,email,pais,fRegistro,fRetiro) values ('cc','153525684696227','tpulford3@drupal.org','Russia',TO_DATE('2019/04/19','YYYY/MM/DD'),TO_DATE('2019/12/19','YYYY/MM/DD'));
insert into Participante(tid,nid,email,pais,fRegistro,fRetiro) values ('cc','622396572815814','emoth4@naver.com','Peru',TO_DATE('2019/11/11','YYYY/MM/DD'),TO_DATE('2019/11/10','YYYY/MM/DD'));
insert into Participante(tid,nid,email,pais,fRegistro,fRetiro) values ('cc','694358000819181','tcattemull5@cbsnews.com','Greece',TO_DATE('2019/10/12','YYYY/MM/DD'),TO_DATE('2019/12/09','YYYY/MM/DD'));
insert into Participante(tid,nid,email,pais,fRegistro,fRetiro) values ('cc','296557618295816','gcordingly6@blogspot.com','China',TO_DATE('2019/12/06','YYYY/MM/DD'),TO_DATE('2019/12/12','YYYY/MM/DD'));
insert into Participante(tid,nid,email,pais,fRegistro,fRetiro) values ('cc','688144156682112','grochelle7@google.com.','Serbia',TO_DATE('2019/10/18','YYYY/MM/DD'),TO_DATE('2019/08/21','YYYY/MM/DD'));
insert into Participante(tid,nid,email,pais,fRegistro,fRetiro) values ('cc','373887191961679','hgebuhr8@home.pl','Indonesia',TO_DATE('2019/06/14','YYYY/MM/DD'),TO_DATE('2020/02/20','YYYY/MM/DD'));
insert into Participante(tid,nid,email,pais,fRegistro,fRetiro) values ('cc','476243973444707','mwoehler9@yelp.com','Czech Republic',TO_DATE('2019/03/17','YYYY/MM/DD'),TO_DATE('2019/04/03','YYYY/MM/DD'));

insert into Atleta(tid,nid,email,pais,fRegistro,fRetiro,(tid,nid,email,pais,fRegistro,fRetiro,rh,Tsangre) values('cc','955061451068998','rcarnall0@istockphoto.com','Afghanistan',TO_DATE('2019/05/30','YYYY/MM/DD'),TO_DATE('2019/06/30','YYYY/MM/DD'),'+','A');
insert into Atleta(tid,nid,email,pais,fRegistro,fRetiro,(tid,nid,email,pais,fRegistro,fRetiro,rh,Tsangre) values('cc','862073803381840','lreitenbach1@ning.com','Poland',TO_DATE('2019/05/11','YYYY/MM/DD'), TO_DATE('2019/07/08','YYYY/MM/DD'),'+','A');
insert into Atleta(tid,nid,email,pais,fRegistro,fRetiro,(tid,nid,email,pais,fRegistro,fRetiro,rh,Tsangre) values('cc','050048822170111','jkibbe2@infoseek.co','China',TO_DATE('2019/06/12','YYYY/MM/DD'), TO_DATE('2019/06/07','YYYY/MM/DD'),'+','A');
insert into Atleta(tid,nid,email,pais,fRegistro,fRetiro,(tid,nid,email,pais,fRegistro,fRetiro,rh,Tsangre) values('cc','153525684696227','tpulford3@drupal.org','Russia',TO_DATE('2019/04/19','YYYY/MM/DD'),TO_DATE('2019/12/19','YYYY/MM/DD'),'+','A');
insert into Atleta(tid,nid,email,pais,fRegistro,fRetiro,(tid,nid,email,pais,fRegistro,fRetiro,rh,Tsangre) values('cc','622396572815814','emoth4@naver.com','Peru',TO_DATE('2019/11/11','YYYY/MM/DD'),TO_DATE('2019/11/10','YYYY/MM/DD'),'+','A');

insert into EntrenadoPor(tidA, nidA, tidE, nidE) values ('cc','955061451068998','cc','694358000819181');
insert into EntrenadoPor(tidA, nidA, tidE, nidE) values ('cc','862073803381840','cc','296557618295816');
insert into EntrenadoPor(tidA, nidA, tidE, nidE) values ('cc','050048822170111','cc','688144156682112');
insert into EntrenadoPor(tidA, nidA, tidE, nidE) values ('cc','153525684696227','cc','373887191961679');
insert into EntrenadoPor(tidA, nidA, tidE, nidE) values ('cc','622396572815814','cc','476243973444707');

insert into Entrenador (tid,nid,email,pais,fRegistro,fRetiro,(tid,nid,email,pais,fRegistro,fRetiro,seguro) values('cc','694358000819181','tcattemull5@cbsnews.com','Greece',TO_DATE('2019/10/12','YYYY/MM/DD'),TO_DATE('2019/12/09','YYYY/MM/DD'),'compensar');
insert into Entrenador (tid,nid,email,pais,fRegistro,fRetiro,(tid,nid,email,pais,fRegistro,fRetiro,seguro) values('cc','296557618295816','gcordingly6@blogspot.com','China',TO_DATE('2019/12/06','YYYY/MM/DD'),TO_DATE('2019/12/12','YYYY/MM/DD'),'sanitas');
insert into Entrenador (tid,nid,email,pais,fRegistro,fRetiro,(tid,nid,email,pais,fRegistro,fRetiro,seguro) values('cc','688144156682112','grochelle7@google.com.','Serbia',TO_DATE('2019/10/18','YYYY/MM/DD'),TO_DATE('2019/08/21','YYYY/MM/DD'),'cafesalud');
insert into Entrenador (tid,nid,email,pais,fRegistro,fRetiro,(tid,nid,email,pais,fRegistro,fRetiro,seguro) values('cc','373887191961679','hgebuhr8@home.pl','Indonesia',TO_DATE('2019/06/14','YYYY/MM/DD'),TO_DATE('2020/02/20','YYYY/MM/DD'),'coomeva');
insert into Entrenador (tid,nid,email,pais,fRegistro,fRetiro,(tid,nid,email,pais,fRegistro,fRetiro,seguro) values('cc','476243973444707','mwoehler9@yelp.com','Czech Republic',TO_DATE('2019/03/17','YYYY/MM/DD'),TO_DATE('2019/04/03','YYYY/MM/DD'),'emermedica');

------------------------------------------------------------------------------------------------------------------

insert into insert into Evaluacion(numeroE,fecha ,puntaje,comentarios,recomendaciones,numero,tidE,nidE) values(
insert into insert into Evaluacion(numeroE,fecha ,puntaje,comentarios,recomendaciones,numero,tidE,nidE) values(
insert into insert into Evaluacion(numeroE,fecha ,puntaje,comentarios,recomendaciones,numero,tidE,nidE) values(
insert into insert into Evaluacion(numeroE,fecha ,puntaje,comentarios,recomendaciones,numero,tidE,nidE) values(
insert into insert into Evaluacion(numeroE,fecha ,puntaje,comentarios,recomendaciones,numero,tidE,nidE) values(