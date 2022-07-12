use Proyecto_Integrador;
create table mascotas(
id int auto_increment primary key,
nombreMascota varchar(30),
especie varchar(30)not null,
sexo varchar(30),
edad varchar(30),
color varchar(30)not null,
manchas varchar(30),
dueño varchar(50),
telefonoDueño varchar(30),
mailDueño varchar(30),
tutor varchar(30),
telefonoTutor varchar(30),
mailTutor varchar(30),
fechaPerdida date,
fechaAparicion date,
lugarPerdida varchar(50),
lugarAparicion varchar(50)
);

alter table mascotas add column imagen varchar(150) not null;

select * from mascotas;



insert into mascotas(nombreMascota,  especie, sexo,   edad, color,           manchas,        tutor,    telefonoTutor, mailTutor            , fechaAparicion,lugarAparicion,   imagen)
values              ("Milo"    ,     'perro','macho',  5,   "Blanco"      , "No tiene"    , "Lorenzo" ,"41532256"   , "tutor@milo.com"     , "2021/09/25"   , "Boedo"       , "img/perros/pexels-dominic-buccilli-981062.jpg"  ),  
					("Matias"  ,     'perro','macho',  7,   "Negro"       , "Marrones"    , "Marcela" ,"51234955"   , "tutor@matias.com"   , "2022/06/30"   , "Almagro"     , "img/perros/pexels-binyamin-mellish-169524.jpg"  ),   
					("Luna"    ,     'perro','hembra', 2,   "Negro"       , "Blancas"     , "Micaela" ,"85426585"   , "tutor@luna.com"     , "2021/09/25"   , "Caballito"   , "img/perros/pexels-helena-lopes-1938126.jpg"     ),   
					("Michifus",     'gato' ,'macho',  3,   "Blanco"      , "Marrón claro", "Lucía"   ,"12352165"   , "tutor@michifus.com" , "2021/09/25"   , "Belgrano"    , "img/gatos/pexels-alena-koval-982300.jpg"        ),   
					("Toby"    ,     'perro','macho',  0,   "Negro"       , "Marrones"    , "Martín"  ,"95261556"   , "tutor@toby.com"     , "2022/04/03"   , "Boedo"       , "img/perros/pexels-pixabay-257519.jpg"           ),   
					("Kala"    ,     'gato' ,'hembra', 8,   "Marrón claro", "Negras"      , "Pedro"   ,"41538566"   , "tutor@kala.com"     , "2021/11/25"   , "Microcentro" , "img/gatos/pexels-alena-koval-982300.jpg"        ),   
					("Lola"    ,     'perro','hembra', 4,   "Marrón claro", "Blancas"     , "Marcos"  ,"51246355"   , "tutor@lola.com"     , "2021/12/25"   , "Boedo"       , "img/perros/pexels-muhannad-alatawi-58997.jpg"   ),   
					("Negrito" ,     'gato' ,'macho',  5,   "Negro"       , "No tiene"    , "Sofía"   ,"24156387"   , "tutor@negrito.com"  , "2022/06/19"   , "Barrio Norte", "img/gatos/pexels-david-bartus-1510543.jpg"      ); 
 
/*Select por Especie*/                 
				
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "perro";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "gato";

/*Select por Sexo*/       

select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where sexo = "macho";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where sexo = "hembra";

/*Select por Edad*/ 

select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where edad < 1;
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where edad <= 5 && edad > 0;
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where edad <= 10 && edad > 5;
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where edad <= 15 && edad > 10;
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where edad > 15;

/*Select por Color*/ 

select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where color = "Blanco";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where color = "Negro";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where color = 'Marrón claro';
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where color = "Chocolate";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where color = "Gris";

/*Select por Manchas*/ 

select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where manchas  = "Blancas";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where manchas  = "Negras";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where manchas  = 'Marrón claro' ;
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where manchas  = "Chocolate";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where manchas  = 'Grises';

/*Select por Especie y sexo*/

select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "perro" && sexo="macho";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "perro" && sexo="hembra";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "gato" && sexo="macho";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "gato" && sexo="hembra";

/*Select por Especie, sexo y edad*/

select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "perro" && sexo="macho" && edad < 1;
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "perro" && sexo="hembra" && edad < 1;
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "gato" && sexo="macho" && edad < 1;
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "gato" && sexo="hembra" && edad < 1;

select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "perro" && sexo="macho" && edad <= 5 && edad > 0;
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "perro" && sexo="hembra" && edad <= 5 && edad > 0;
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "gato" && sexo="macho" && edad <= 5 && edad > 0;
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "gato" && sexo="hembra" && edad <= 5 && edad > 0;

select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "perro" && sexo="macho" && edad <= 10 && edad > 5;
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "perro" && sexo="hembra" && edad <= 10 && edad > 5;
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "gato" && sexo="macho" && edad <= 10 && edad > 5;
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "gato" && sexo="hembra" && edad <= 10 && edad > 5;

select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "perro" && sexo="macho" && edad <= 15 && edad > 10;
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "perro" && sexo="hembra" && edad <= 15 && edad > 10;
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "gato" && sexo="macho" && edad <= 15 && edad > 10;
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "gato" && sexo="hembra" && edad <= 15 && edad > 10;

select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "perro" && sexo="macho" && edad > 15;
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "perro" && sexo="hembra" && edad > 15;
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "gato" && sexo="macho" && edad > 15;
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "gato" && sexo="hembra" && edad > 15;

/*Select por Especie, sexo, edad y color*/

select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "perro" && sexo="macho" && edad < 1 && color = "Negro";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "perro" && sexo="hembra" && edad < 1 && color = "Negro";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "gato" && sexo="macho" && edad < 1 && color = "Negro";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "gato" && sexo="hembra" && edad < 1 && color = "Negro";

select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "perro" && sexo="macho" && edad <= 5 && edad > 0 && color = "Negro";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "perro" && sexo="hembra" && edad <= 5 && edad > 0 && color = "Negro";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "gato" && sexo="macho" && edad <= 5 && edad > 0 && color = "Negro";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "gato" && sexo="hembra" && edad <= 5 && edad > 0 && color = "Negro";

select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "perro" && sexo="macho" && edad <= 10 && edad > 5 && color = "Negro";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "perro" && sexo="hembra" && edad <= 10 && edad > 5 && color = "Negro";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "gato" && sexo="macho" && edad <= 10 && edad > 5 && color = "Negro";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "gato" && sexo="hembra" && edad <= 10 && edad > 5 && color = "Negro";

select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "perro" && sexo="macho" && edad <= 15 && edad > 10 && color = "Negro";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "perro" && sexo="hembra" && edad <= 15 && edad > 10 && color = "Negro";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "gato" && sexo="macho" && edad <= 15 && edad > 10 && color = "Negro";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "gato" && sexo="hembra" && edad <= 15 && edad > 10 && color = "Negro";

select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "perro" && sexo="macho" && edad > 15 && color = "Negro";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "perro" && sexo="hembra" && edad > 15 && color = "Negro";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "gato" && sexo="macho" && edad > 15 && color = "Negro";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "gato" && sexo="hembra" && edad > 15 && color = "Negro";


select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "perro" && sexo="macho" && edad < 1 && color = "Blanco";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "perro" && sexo="hembra" && edad < 1 && color = "Blanco";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "gato" && sexo="macho" && edad < 1 && color = "Blanco";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "gato" && sexo="hembra" && edad < 1 && color = "Blanco";

select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "perro" && sexo="macho" && edad <= 5 && edad > 0 && color = "Blanco";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "perro" && sexo="hembra" && edad <= 5 && edad > 0 && color = "Blanco";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "gato" && sexo="macho" && edad <= 5 && edad > 0 && color = "Blanco";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "gato" && sexo="hembra" && edad <= 5 && edad > 0 && color = "Blanco";

select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "perro" && sexo="macho" && edad <= 10 && edad > 5 && color = "Blanco";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "perro" && sexo="hembra" && edad <= 10 && edad > 5 && color = "Blanco";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "gato" && sexo="macho" && edad <= 10 && edad > 5 && color = "Blanco";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "gato" && sexo="hembra" && edad <= 10 && edad > 5 && color = "Blanco";

select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "perro" && sexo="macho" && edad <= 15 && edad > 10 && color = "Blanco";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "perro" && sexo="hembra" && edad <= 15 && edad > 10 && color = "Blanco";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "gato" && sexo="macho" && edad <= 15 && edad > 10 && color = "Blanco";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "gato" && sexo="hembra" && edad <= 15 && edad > 10 && color = "Blanco";

select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "perro" && sexo="macho" && edad > 15 && color = "Blanco";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "perro" && sexo="hembra" && edad > 15 && color = "Blanco";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "gato" && sexo="macho" && edad > 15 && color = "Blanco";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "gato" && sexo="hembra" && edad > 15 && color = "Blanco";


select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "perro" && sexo="macho" && edad < 1 && color = "Chocolate";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "perro" && sexo="hembra" && edad < 1 && color = "Chocolate";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "gato" && sexo="macho" && edad < 1 && color = "Chocolate";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "gato" && sexo="hembra" && edad < 1 && color = "Chocolate";

select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "perro" && sexo="macho" && edad <= 5 && edad > 0 && color = "Chocolate";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "perro" && sexo="hembra" && edad <= 5 && edad > 0 && color = "Chocolate";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "gato" && sexo="macho" && edad <= 5 && edad > 0 && color = "Chocolate";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "gato" && sexo="hembra" && edad <= 5 && edad > 0 && color = "Chocolate";

select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "perro" && sexo="macho" && edad <= 10 && edad > 5 && color = "Chocolate";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "perro" && sexo="hembra" && edad <= 10 && edad > 5 && color = "Chocolate";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "gato" && sexo="macho" && edad <= 10 && edad > 5 && color = "Chocolate";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "gato" && sexo="hembra" && edad <= 10 && edad > 5 && color = "Chocolate";

select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "perro" && sexo="macho" && edad <= 15 && edad > 10 && color = "Chocolate";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "perro" && sexo="hembra" && edad <= 15 && edad > 10 && color = "Chocolate";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "gato" && sexo="macho" && edad <= 15 && edad > 10 && color = "Chocolate";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "gato" && sexo="hembra" && edad <= 15 && edad > 10 && color = "Chocolate";

select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "perro" && sexo="macho" && edad > 15 && color = "Chocolate";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "perro" && sexo="hembra" && edad > 15 && color = "Chocolate";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "gato" && sexo="macho" && edad > 15 && color = "Chocolate";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "gato" && sexo="hembra" && edad > 15 && color = "Chocolate";


select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "perro" && sexo="macho" && edad < 1 && color = "Marrón claro";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "perro" && sexo="hembra" && edad < 1 && color = "Marrón claro";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "gato" && sexo="macho" && edad < 1 && color = "Marrón claro";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "gato" && sexo="hembra" && edad < 1 && color = "Marrón claro";

select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "perro" && sexo="macho" && edad <= 5 && edad > 0 && color = "Marrón claro";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "perro" && sexo="hembra" && edad <= 5 && edad > 0 && color = "Marrón claro";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "gato" && sexo="macho" && edad <= 5 && edad > 0 && color = "Marrón claro";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "gato" && sexo="hembra" && edad <= 5 && edad > 0 && color = "Marrón claro";

select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "perro" && sexo="macho" && edad <= 10 && edad > 5 && color = "Marrón claro";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "perro" && sexo="hembra" && edad <= 10 && edad > 5 && color = "Marrón claro";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "gato" && sexo="macho" && edad <= 10 && edad > 5 && color = "Marrón claro";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "gato" && sexo="hembra" && edad <= 10 && edad > 5 && color = "Marrón claro";

select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "perro" && sexo="macho" && edad <= 15 && edad > 10 && color = "Marrón claro";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "perro" && sexo="hembra" && edad <= 15 && edad > 10 && color = "Marrón claro";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "gato" && sexo="macho" && edad <= 15 && edad > 10 && color = "Marrón claro";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "gato" && sexo="hembra" && edad <= 15 && edad > 10 && color = "Marrón claro";

select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "perro" && sexo="macho" && edad > 15 && color = "Marrón claro";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "perro" && sexo="hembra" && edad > 15 && color = "Marrón claro";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "gato" && sexo="macho" && edad > 15 && color = "Marrón claro";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "gato" && sexo="hembra" && edad > 15 && color = "Marrón claro";


select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "perro" && sexo="macho" && edad < 1 && color = "Gris";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "perro" && sexo="hembra" && edad < 1 && color = "Gris";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "gato" && sexo="macho" && edad < 1 && color = "Gris";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "gato" && sexo="hembra" && edad < 1 && color = "Gris";

select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "perro" && sexo="macho" && edad <= 5 && edad > 0 && color = "Gris";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "perro" && sexo="hembra" && edad <= 5 && edad > 0 && color = "Gris";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "gato" && sexo="macho" && edad <= 5 && edad > 0 && color = "Gris";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "gato" && sexo="hembra" && edad <= 5 && edad > 0 && color = "Gris";

select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "perro" && sexo="macho" && edad <= 10 && edad > 5 && color = "Gris";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "perro" && sexo="hembra" && edad <= 10 && edad > 5 && color = "Gris";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "gato" && sexo="macho" && edad <= 10 && edad > 5 && color = "Gris";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "gato" && sexo="hembra" && edad <= 10 && edad > 5 && color = "Gris";

select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "perro" && sexo="macho" && edad <= 15 && edad > 10 && color = "Gris";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "perro" && sexo="hembra" && edad <= 15 && edad > 10 && color = "Gris";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "gato" && sexo="macho" && edad <= 15 && edad > 10 && color = "Gris";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "gato" && sexo="hembra" && edad <= 15 && edad > 10 && color = "Gris";

select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "perro" && sexo="macho" && edad > 15 && color = "Gris";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "perro" && sexo="hembra" && edad > 15 && color = "Gris";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "gato" && sexo="macho" && edad > 15 && color = "Gris";
select nombreMascota , especie, sexo, edad, color, manchas, fechaAparicion, lugarAparicion, imagen  from mascotas where especie = "gato" && sexo="hembra" && edad > 15 && color = "Gris";
