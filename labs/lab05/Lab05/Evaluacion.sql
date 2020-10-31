create table Evaluacion(
    numeroE number  NOT NULL,
    fecha date  NOT NULL, 
    puntaje  number(5,0)  NOT NULL,
    comentarios varchar(500),
    recomendaciones XMLTYPE NOT NULL,
    numero number  NOT NULL,
    tidE varchar(3)  NOT NULL,
    nidE varchar(15)  NOT NULL
	);
	
	
	--XML OK
	insert into Evaluacion(numeroE,fecha ,puntaje,comentarios,recomendaciones,numero,tidE,nidE) values (12,TO_DATE('2020-01-15','YYYY/MM/DD'),5,'Muy buena actividad',
	'<recomendaciones>
		<entrenador tid="dcc" nid="102212487123601"/>
		<descripciones>
			<descripcion> "Buena" </descripcion>
		</descripciones>
		<NImportancia importancia = "5"/>
		</recomendaciones>');
		
	
	

	-- XML NO OK
	insert into Evaluacion(numeroE,fecha ,puntaje,comentarios,recomendaciones,numero,tidE,nidE) values (12,TO_DATE('2020-01-15','YYYY/MM/DD'),5,'Muy buena actividad',
	'<recomendaciones>
		<entrenador tid="dcc" nid="102212487123601"/>
		<descripciones>
		</descripciones>
		<NImportancia importancia = "5"/>
		</recomendaciones>');
	