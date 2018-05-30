SET sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));
drop database if exists DecideteIpn;
create database DecideteIpn;
use DecideteIpn;

create table TipoUsuario(
idTipo int not null primary key,
tipoUsuario nvarchar(60) not null);
insert into TipoUsuario values(1,"Alumno");
insert into TipoUsuario values(2,"Administrador");
insert into TipoUsuario values(3,"Egresado");
select * from TipoUsuario;

create table Genero(
idGenero int not null primary key,
genero nvarchar(60) not null);
insert into Genero values(1,"Femenino");
insert into Genero values(2,"Maculino");
select * from Genero;

create table Area(
idArea int not null primary key,
area nvarchar(60) not null);
insert into Area values(1,"Fisico-Matematico");
insert into Area values(2,"Medico-Biologicas");
insert into Area values(3,"Social-Administrativo");
select * from Area;

create table Delegacion(
idDelegacion int not null primary key,
delegacion nvarchar(60) not null);
insert into Delegacion values(1,"Alvaro Obregon");
insert into Delegacion values(2,"Azcapotzalco");
insert into Delegacion values(3,"Benito Juarez");
insert into Delegacion values(4,"Coyoacan");
insert into Delegacion values(5,"Cuajimalpa de Morelos");
insert into Delegacion values(6,"Cuauhtemoc");
insert into Delegacion values(7,"Gustavo A. Madero");
insert into Delegacion values(8,"Iztacalco");
insert into Delegacion values(9,"Iztapalapa");
insert into Delegacion values(10,"Magdalena Contreras");
insert into Delegacion values(11,"Miguel Hidalgo");
insert into Delegacion values(12,"Milpa Alta");
insert into Delegacion values(13,"Tlahuac");
insert into Delegacion values(14,"Tlalpan");
insert into Delegacion values(15,"Venustiano Carranza");
insert into Delegacion values(16,"Xochimilco");
insert into Delegacion values(0,"Ecatepec");
select * from Delegacion;

create table Escuelas(
idEscuela int not null primary key,
idArea int not null,
Escuela nvarchar(60) not null,
iddelegacion int not null,
aciertos int not null,
domicilio nvarchar(800) not null,
constraint area_fk foreign key (idArea) references Area(idArea),
constraint delegacion_fk foreign key (iddelegacion) references Delegacion(idDelegacion));
describe Escuelas;
insert into Escuelas values(1,1,"Gonzalo Vazquez Vela",7,92,'');
insert into Escuelas values(2,1,"Miguel Bernard Perales",11,93,'');
insert into Escuelas values(3,1,"Estanislao Ramirez Ruiz",0,100,'');
insert into Escuelas values(4,1,"Lazaro Cardenaz del Rio",1,89,'');
insert into Escuelas values(5,3,"Benito Juarez Garcia",6,94,'');
insert into Escuelas values(6,2,"Miguel Othon de Mendizabal",2,97,'');
insert into Escuelas values(7,1,"Cuahutemoc",9,94,'');
insert into Escuelas values(8,1,"Narciso Bassols Garcia",2,89,'');
insert into Escuelas values(9,1,"Juan de Dios Batiz",11,108,'');
insert into Escuelas values(10,1,"Carlos Vallejo Marquez",7,89,'');
insert into Escuelas values(11,1,"Willfrido Massieu Pérez",11,89,'');
insert into Escuelas values(12,3,"Jose Ma Morelos y Pavón",6,89,'');
insert into Escuelas values(13,3,"Ricardo Flores Magón",4,96,'');
insert into Escuelas values(14,3,"Luis Enrique Erro Soler",15,91,'');
insert into Escuelas values(15,2,"Diodoro Antúnez Echegaray",12,94,'');
insert into Escuelas values(16,1,"Walter Cross Buchanan",7,89,'');
select * from Escuelas;

create table usuarios(
idUsuario int not null primary key,
idTipo int not null,
idGenero int not null,
nombre nvarchar(120) not null,
correo varchar(100) not null,
edad int not null,
contraseña varchar(30) not null,
fechaReg datetime default current_timestamp,
constraint tipo_FK foreign key (idTipo) references TipoUsuario (idTipo),
constraint genero_FK foreign key (idGenero) references Genero (idGenero)
);
describe usuarios;
insert into usuarios values(1,2,2,"DISoft","admin@disoft.com",15,"qwerty",current_timestamp());
insert into usuarios values(2,1,2,"Paco","paco1@abc.com",16,"abc",current_timestamp());
insert into usuarios values(3,1,2,"Pancho","pancho@abc.com",15,"abc",current_timestamp());
insert into usuarios values(4,1,2,"Pablo","pablo@abc.com",16,"abc",current_timestamp());
insert into usuarios values(5,1,2,"Andres","andres@abc.com",17,"abc",current_timestamp());
insert into usuarios values(6,1,2,"Javier","javier@abc.com",15,"abc",current_timestamp());
insert into usuarios values(7,1,2,"Julian","julian@abc.com",15,"abc",current_timestamp());
insert into usuarios values(8,1,2,"Julio","julio@abc.com",16,"abc",current_timestamp());
insert into usuarios values(9,1,2,"Emmanuel","emmanuel@abc.com",14,"abc",current_timestamp());
insert into usuarios values(10,1,2,"Eduardo","eduardo@abc.com",13,"abc",current_timestamp());
insert into usuarios values(11,1,1,"Maria","maria@abc.com",14,"abc",current_timestamp());
insert into usuarios values(12,1,2,"Luis","luis@abc.com",14,"abc",current_timestamp());
insert into usuarios values(13,1,1,"Diana","diana@abc.com",14,"abc",current_timestamp());
insert into usuarios values(14,1,1,"Daniela","daniela@abc.com",14,"abc",current_timestamp());
insert into usuarios values(15,1,2,"David","david@abc.com",15,"abc",current_timestamp());
insert into usuarios values(16,1,2,"Daniel","daniel@abc.com",15,"abc",current_timestamp());
insert into usuarios values(17,1,2,"Axel","axel@abc.com",14,"abc",current_timestamp());
insert into usuarios values(18,1,2,"Samuel","samuel@abc.com",15,"abc",current_timestamp());
insert into usuarios values(19,1,1,"Margarita","margarita@abc.com",14,"abc",current_timestamp());
insert into usuarios values(20,1,2,"Marcos","marcos@abc.com",16,"abc",current_timestamp());
insert into usuarios values(21,1,1,"Valeria","valeria@abc.com",15,"abc",current_timestamp());
insert into usuarios values(22,1,2,"Fernando","fernando@abc.com",14,"abc",current_timestamp());
insert into usuarios values(23,1,2,"Paco","paco2@abc.com",15,"abc",current_timestamp());
insert into usuarios values(24,1,2,"Ernesto","ernesto@abc.com",13,"abc",current_timestamp());
insert into usuarios values(25,1,2,"Mauricio","mauricio@abc.com",13,"abc",current_timestamp());
insert into usuarios values(26,1,2,"Cesar","cesar@abc.com",14,"abc",current_timestamp());
insert into usuarios values(27,1,2,"Jorge","jorge@abc.com",15,"abc",current_timestamp());
insert into usuarios values(28,1,2,"Uriel","uriel@abc.com",15,"abc",current_timestamp());
insert into usuarios values(29,1,1,"Jessica","jessica@abc.com",15,"abc",current_timestamp());
insert into usuarios values(30,1,1,"Carolina","carolina@abc.com",14,"abc",current_timestamp());
insert into usuarios values(31,1,2,"Osiris","osiris@abc.com",16,"abc",current_timestamp());

create table EscEgresado(
idEscEgresado int not null primary key,
idUsuario int not null,
idEscuela int not null,
constraint fk_idUsrEgresado foreign key(idUsuario) references Usuarios (idUsuario),
constraint fk_EscEgresado foreign key (idEscuela) references Escuelas (idEscuela)
);

create table Comentarios(
idComentario int not null primary key,
idUsuario int not null,
idEscuela int not null,
comentario nvarchar(250) not null,
constraint fk_idUsrComentarios foreign key(idUsuario)references Usuarios (idUsuario),
constraint fk_idEscComentarios foreign key(idEscuela)references Escuelas (idEscuela)
);


create table Cuestionarios(
idCuestionario int not null primary key,
Clase nvarchar(60) not null,
numPreguntas int not null
);
insert into cuestionarios values(1,'Aptitudes',20);
insert into cuestionarios values(2,'Nececidades',10);
insert into cuestionarios values(3,'Tipo Examen',128);


create table Resultados(
idResultado int not null primary key,
idUsuario int not null,
idCuestionario int not null,
constraint fkcu foreign key(idCuestionario)references Cuestionarios(idCuestionario),
constraint fk_usuarioCuestionario foreign key(idUsuario)references usuarios(idUsuario)
);

create table Campos(
idCampo int not null primary key,
campo nvarchar(80) not null,
idArea int not null,
constraint fk_area foreign key (idArea) references Area (idArea)
);



create table Aptitudes(
idAptitudes int not null primary key,
idResultado int not null,
constraint fk_resultadoa foreign key(idResultado) references Resultados(idResultado)
);

create table DetalleAptitudes(
idDetalleAptitudes int not null primary key,
idAptitudes int not null,
valorAptitudes int not null,
idCampo int not null,
constraint fk_campo foreign key (idCampo) references Campos (idCampo),
constraint fk_aptitudes foreign key (idAptitudes) references Aptitudes (idAptitudes)
);
create table Materias(
idMateria int not null primary key,
materia nvarchar(80) not null,
idArea int not null,
constraint fk_aream foreign key(idArea) references Area (idArea)
);

insert into Materias values(1,"Habilidad Verbal",3);
insert into Materias values(2,"Habilidad Matemática",1);
insert into Materias values(3,"Español",3);
insert into Materias values(4,"Matemáticas",1);
insert into Materias values(5,"Geografía",1);
insert into Materias values(6,"Biología",2);
insert into Materias values(7,"Química",2);
insert into Materias values(8,"Física",1);
insert into Materias values(9,"Historia",3);
insert into Materias values(10,"Formación cívica y ética",3);

select * from Materias m order by m.materia;

create table Conocimientos(
idConocimientos int not null primary key,
idResultado int not null,
constraint fk_resultadoc foreign key(idResultado) references Resultados(idResultado)
);

create table CalifConocimientos(
idCalif int not null primary key,
idConocimientos int not null,
idMateria int not null,
calif int not null,
constraint fk_conocimientos foreign key(idConocimientos) references Conocimientos(idConocimientos),
constraint fk_materia foreign key(idMateria)references Materias(idMateria)
);

create table DetalleRes(
idDetalleRes int not null primary key,
idResultado int not null,
idArea int not null,
valorRes int not null,
constraint fk_resultadod foreign key(idResultado) references Resultados(idResultado),
constraint fk_aread foreign key(idArea) references Area (idArea)
);

insert into campos values(1,'Servicio Social',3);
insert into campos values(2,'Ejecutiva',3);
insert into campos values(3,'verbal',3);
insert into campos values(4,'Artistico',3);
insert into campos values(5,'musical',3);
insert into campos values(6,'organizacion',3);
insert into campos values(7,'Científico',1);
insert into campos values(8,'Calculo',1);
insert into campos values(9,'Mecanica',1);
insert into campos values(10,'Trabajo al aire libre',3);

create table Necesidades(
idNecesidades int not null primary key,
idResultado int not null,
valor int not null,
constraint fk_resultadoN foreign key(idResultado) references Resultados (idResultado)
);

create table Historial(
idHistorial int not null primary key,
idUsuario int not null,
aptitudes int not null,
examen int not null,
necesidades int not null,
Escuela nvarchar(200),
constraint fk_idUsrHistorial foreign key(idUsuario) references Usuarios (idUsuario)
);

drop view if exists vwEscPorArea;

create view vwEscPorArea
as
select count(*) as total, a.area from Escuelas e
	inner join Area a on a.idArea = e.idArea
group by e.idArea;

drop view if exists vwEscuelas;

create view vwEscuelas
as
select e.idEscuela, e.idArea, a.area, e.iddelegacion, d.delegacion, e.Escuela, e.aciertos from Escuelas e
	inner join Area a on a.idArea = e.idArea
    inner join delegacion d on d.idDelegacion = e.iddelegacion
group by e.idEscuela;

select * from vwEscuelas;

drop view if exists vwUsuarios;
create view vwUsuarios
as
select u.idUsuario, u.idTipo, t.tipoUsuario, u.idGenero, g.genero, u.nombre, u.correo, u.edad, u.contraseña, u.fechaReg from usuarios u
	inner join tipoUsuario t on t.idTipo = u.idTipo
    inner join genero g on g.idGenero = u.idGenero
    group by u.idUsuario;
select * from vwUsuarios;

drop view if exists vwAlumnos;
create view vwAlumnos
as
select u.idUsuario, u.idTipo, t.tipoUsuario, u.idGenero, g.genero, u.nombre, u.correo, u.edad, u.contraseña, u.fechaReg from usuarios u 
	inner join tipoUsuario t on t.idTipo = u.idTipo
    inner join genero g on g.idGenero = u.idGenero
where u.idTipo = 1
group by u.idUsuario;
select * from vwAlumnos;

drop view if exists vwEgresados;
create view vwEgresados
as
select u.idUsuario, u.idTipo, t.tipoUsuario, u.idGenero, g.genero, u.nombre, u.correo, u.edad, u.contraseña, u.fechaReg, ee.idEscuela, e.Escuela from usuarios u 
	inner join tipoUsuario t on t.idTipo = u.idTipo
    inner join genero g on g.idGenero = u.idGenero
    inner join EscEgresado ee on ee.idUsuario = u.idUsuario
    inner join Escuelas e on e.idEscuela = ee.idEscuela
where u.idTipo = 3
group by u.idUsuario;
select *  from vwEgresados;

drop view if exists vwComent;
create view vwComent
as
select c.idComentario, c.idUsuario, c.idEscuela, e.Escuela, c.Comentario from comentarios c
    inner join Escuelas e on e.idEscuela = c.idEscuela
group by c.idComentario;

drop view if exists vwComentarios;
create view vwComentarios 
as
select vwC.idComentario, vwC.idUsuario,u.Nombre,e.escuela as 'Escuela_del_Egresado', vwC.idEscuela, vwC.Escuela, vwC.Comentario from vwComent vwC
	inner join Usuarios u on u.idUsuario = vwC.idUsuario
    inner join EscEgresado ee on ee.idUsuario = u.idUsuario
    inner join Escuelas e on e.idEscuela = ee.idEscuela
group by vwC.idComentario; 
    


select * from vwComentarios;

drop view if exists vwAptitudes;
create view vwAptitudes
as
select r.idResultado, r.idUsuario, u.nombre, r.idCuestionario, c.clase as 'tipo de cuestionario', a.idAptitudes, da.idDetalleAptitudes, da.ValorAptitudes, da.idCampo, ca.campo, ca.idArea, ar.area from resultados r
	inner join Aptitudes a on a.idResultado = r.idResultado
    inner join usuarios u on u.idUsuario = r.idUsuario
    inner join Cuestionarios c on c.idCuestionario = r.idCuestionario
    inner join DetalleAptitudes da on da.idAptitudes = a.idAptitudes
    inner join Campos ca on ca.idCampo = da.idCampo
    inner join Area ar on ar.idArea = ca.idArea
where r.idCuestionario = 1
group by da.idDetalleAptitudes;
select * from vwAptitudes;

drop view if exists vwConocimientos;
create view vwConocimientos
as
select r.idResultado, r.idUsuario, u.nombre, r.idCuestionario, c.clase as 'tipo de cuestionario', con.idConocimientos, calC.idCalif, calC.calif from resultados r
	inner join Conocimientos con on con.idResultado = r.idResultado
    inner join Usuarios u on u.idUsuario = r.idUsuario
    right join Cuestionarios c on c.idCuestionario
    right join CalifConocimientos calC on calC.idConocimientos
where r.idCuestionario = 3
group by calC.idCalif;
select * from vwConocimientos;

drop procedure if exists spGuardaUsuarios;
delimiter **
create procedure spGuardaUsuarios(in idUsr int,in idT int,in idG int, in nom nvarchar(120),in mail nvarchar(100),in eda int,in contra varchar(30))
begin
declare existe int;
declare msj nvarchar(200);

if idUsr = 0 then
		
        set existe = (select count(*)from usuarios where correo = mail);
        
    if(existe = 0) then
    
    
		set idUsr = (select ifnull(max(idUsuario), 0) + 1 from usuarios);
		insert into usuarios values(idUsr,idT,idG,nom,mail,eda,contra,current_timestamp());
		set msj = 'Usuario registrado exitosamente';
    else
		
        set msj = 'Ya esta registrado ese usuario';
        
    end if;
    
else
	if(select count(*)from usuarios where idTipo =idT and correo = mail)then
	
		update usuarios set nombre = nom, idGenero = idG, edad = eda, contraseña = contra where idUsuario = idUsr;
        set msj = 'Actualizó con exito';
    
    else
    
		set msj =  'no existe ese usuario';
    
    end if;
end if;

select msj;

end; **
delimiter ;

drop procedure if exists spGuardaEgresado;
delimiter **
create procedure spGuardaEgresado(in idUsr int,in idT int,in idG int, in nom nvarchar(120),in mail nvarchar(100),in eda int,in contra varchar(30),in idEg int, idEsc int)
begin
declare existe int;
declare msj nvarchar(200);

if idUsr = 0 then
		
        set existe = (select count(*)from usuarios where correo = mail);
        
    if(existe = 0) then
    
    
		set idUsr = (select ifnull(max(idUsuario), 0) + 1 from usuarios);
		insert into usuarios values(idUsr,idT,idG,nom,mail,eda,contra,current_timestamp());
        set idEg = (select ifnull(max(idEscEgresado), 0) + 1 from EscEgresado);
        insert into EscEgresado values(idEg,idUsr,idEsc);
		set msj = 'Usuario registrado exitosamente';
    else
		
        set msj = 'Ya esta registrado ese usuario';
        
    end if;
else
	
    if(select count(*)from usuarios where idTipo =idT and correo = mail)then
	
		update usuarios set nombre = nom, idGenero = idG, edad = eda, contraseña = contra where idUsuario = idUsr;
        set msj = 'Actualizó con exito';
    
    else
    
		set msj =  'no existe ese usuario';
    
    end if;
    
end if;

select msj;

end; **
delimiter ;

drop procedure if exists spActualizaEgrsado;
delimiter **
create procedure spActualizaEgrsado(in idUsr int,in nom nvarchar(200),in mail nvarchar(200),in eda int,in idG int, in contra nvarchar(60))
begin 
declare msj nvarchar(200);

if(select count(*)from usuarios where correo = mail)then
	
		update usuarios set nombre = nom, idGenero = idG, edad = eda, contraseña = contra where idUsuario = idUsr;
        set msj = 'Actualizó con exito';
    
    else
    
		set msj =  'no existe ese usuario';
end if;
select msj;
end; **
delimiter ;

drop procedure if exists spGuardaComentarios;
delimiter **
create procedure spGuardaComentarios(in idCom int,in idUsr int,in idEsc int,in Com nvarchar(250))
begin
declare existe int;
declare msj nvarchar(200);

	set existe = (select count(*)from Usuarios where idUsuario = idUsr and idTipo = 3);

	if existe = 0 then
		 set msj = 'El usr no es valido';
	else

		set idCom = (select ifnull(max(idComentario),0)+1 from Comentarios );
		insert into Comentarios values(idCom,idUsr,idEsc,Com);
        set msj ='ok';
        select msj;
	end if;

end; **
delimiter ;

drop procedure if exists spConsultaComentariosEsc;
delimiter **
create procedure spConsultaComentariosEsc(in idEsc int)
begin 
declare existe int;
declare msj nvarchar(200);

set existe = (select count(*) from Comentarios where idEscuela = idEsc);

if existe = 0 then
	set msj = 'Aún no hay comentarios sobre esta escuela';
    select msj;
else
	set msj ='ok';
	select msj,idUsuario,Escuela_del_Egresado 'Escuela del egresado',nombre,escuela,comentario  from vwcomentarios where idEscuela = idEsc;

end if;

end; **
delimiter ;

describe vwcomentarios;

drop procedure if exists spEliminaComentariosUsr;
delimiter **
create procedure spEliminaComentariosUsr(in idUsr int)
begin
declare existe int;
declare msj nvarchar(200);

set existe = (select count(*) from comentarios where idUsuario = idUsr);

if existe = 0 then

	set msj = 'El usr aún no hace cuetionarios';
    select msj;

else

	delete from comentarios where idUsuario = idUsr;
    set msj = 'ok';

end if;

select msj;

end; **
delimiter ;

drop procedure if exists spEliminaComentariosId;
delimiter **
create procedure spEliminaComentariosId(in idComent int)
begin
declare existe int;
declare msj nvarchar(200);

set existe = (select count(*) from comentarios where idComentario = idComent);

if existe = 0 then

	set msj = 'El usr aún no hace cuetionarios';
    select msj;

else

	delete from comentarios where idComentario = idComent;
    set msj = 'ok';

end if;

select msj;

end; **
delimiter ;


drop procedure if exists spActualizaContraseña;
delimiter **
create procedure spActualizaContraseña(in idUsr int,in psw nvarchar(60), in pswnew nvarchar(60))
begin
declare existe int;
declare msj nvarchar(200);

set existe = (select count(*) from usuarios where idUsuario = idUsr and contraseña = psw);

if existe = 1 then
	
    update usuarios set contraseña = pswnew where idUsuario = idUsr;
    set msj = 'Contraseña actualizada';
    select msj;
    
else
	
    set msj = 'Contraseña invalida';
    select msj;
end if;

end; **
delimiter ;

drop procedure if exists spValidaUsr;
delimiter :v
create procedure spValidaUsr(in mail nvarchar(200), in psw nvarchar(60))
begin 
declare existe int;
declare msj nvarchar(200);
declare idUsr int;

set existe = (select count(*) from usuarios where correo = mail and contraseña = psw and idTipo = 1);

if existe = 1 then

	set msj = 'usr valido';
    select idUsuario idPer,idTipo, nombre NombreC, msj from usuarios where correo = mail and contraseña = psw and idTipo =1;

else

	set msj =  'usuario o contraseña invalido';
    select 0 as idPer, msj;
    
end if;

end; :v
delimiter ;

drop procedure if exists spValidaEgresado;
delimiter **
create procedure spValidaEgresado(in mail nvarchar(200),in psw nvarchar(60))
begin
declare exiSte int;
declare msj nvarchar(200);

set existe = (select count(*) from usuarios where correo = mail and contraseña = psw and idTipo = 3);

if existe = 1 then

	set msj = 'ok';
    select idUsuario idPer,idTipo, nombre NombreC, msj from usuarios where correo = mail and contraseña = psw and idTipo = 3;

else

	set msj =  'usuario o contraseña invalido';
    select 0 as idPer, msj;

end if;

end; **
delimiter **

drop procedure if exists spTraeDatos;
delimiter **
create procedure spTraeDatos(in idUsr int)
begin
declare msj nvarchar(200);
declare existe int;

set existe = (select count(*) from Usuarios where (idUsuario = idUsr and idTipo = 1) or (idUsuario = idUsr and idTipo = 3));

if existe = 1 then
	
    set msj = 'OK';
    select * from vwUsuarios where idUsuario = idUsr ;

else
	
    set msj = 'El usr no existe';
    select msj;
    
end if;


end; **
delimiter ;


## 	Cuestionarios ========================================================================================================================================================================================================================
drop procedure if exists spGuardaResAptitudes;
delimiter **
create procedure spGuardaResAptitudes(in idRes int, in idUsr int, in idCuest int, in idAp int, in idDetalleAp int,in idCa int,in c1 int,in c2 int,in c3 int,in c4 int,in c5 int,in c6 int,in c7 int,in c8 int,in c9 int,in c10 int)
begin
declare existeReg int;
declare existeUsr int;
declare i int;
declare n nvarchar(4);
declare calif int;
declare msj nvarchar(200);
set i = 1;

if idRes = 0 then
	
    set existeReg = (select count(*) from resultados where idUsuario = idUsr and idCuestionario = idCuest);
    set existeUsr = (select count(*) from usuarios where idUsuario = idUsr);
    if(existeReg = 0 and existeUsr = 1 and idCuest=1 ) then
		set idRes =  (select ifnull(max(idResultado),0)+1 from Resultados);
        set idAp = (select ifnull(max(idAptitudes),0)+1 from Aptitudes);
        insert into Resultados(idResultado,idUsuario,idCuestionario) values(idRes,idUsr,idCuest);
        insert into Aptitudes(idAptitudes,idResultado) values(idAp,idRes);
        
        while(i < 11) do
			if(i=1)then
				set calif = c1;
            else
				if(i=2)then
					set calif = c2;
                else
					if(i=3)then
						set calif = c3;
					else
						if(i=4)then
							set calif = c4;
						else
							if(i=5)then
								set calif = c5;
							else
								if(i=6)then
									set calif = c6;
								else
									if(i=7)then
										set calif = c7;
									else
										if(i=8)then
											set calif = c8;
										else
											if(i=9)then
												set calif = c9;
                                            else
												set calif = c10;
											end if;
										end if;
									end if;
								end if;
							end if;
						end if;
					end if;
                end if;
            end if;
            set idDetalleAp = (select ifnull(max(idDetalleAptitudes),0)+1 from DetalleAptitudes);
			set idCa = i;
            insert into DetalleAptitudes(idDetalleAptitudes,idAptitudes,valorAptitudes,idCampo) values(idDetalleAp,idAp,calif,idCa);
            set i = i+1;
            
        end while;
        
        set msj = 'Resultado agregado con éxito';
    else
    
		set msj = 'El resultado ya existe';
    
    end if;
    
else
	set msj = 'en este momento no se pueden actualizar cuestionarios';
end if;

select msj;

end; **
delimiter ;

drop procedure if exists spGuardaResConocimiento;
delimiter **
create procedure spGuardaResConocimiento(in idRes int, in idUsr int, in idCuest int, in idCon int, in idCalifCon int,in idMa int,in c1 int,in c2 int,in c3 int,in c4 int,in c5 int,in c6 int,in c7 int,in c8 int,in c9 int,in c10 int)
begin
declare existeReg int;
declare existeUsr int;
declare i int;
declare n nvarchar(4);
declare calif int;
declare msj nvarchar(200);
set i = 1;

if idRes = 0 then
	
    set existeReg = (select count(*) from resultados where idUsuario = idUsr and idCuestionario = idCuest);
    set existeUsr = (select count(*) from usuarios where idUsuario = idUsr);
    if((existeReg = 0 and existeUsr = 1 and idCuest=3) or (existeReg = 1 and existeUsr = 1 and idCuest=3)) then
		set idRes =  (select ifnull(max(idResultado),0)+1 from Resultados);
        set idCon = (select ifnull(max(idConocimientos),0)+1 from Conocimientos);
        insert into Resultados(idResultado,idUsuario,idCuestionario) values(idRes,idUsr,idCuest);
        insert into Conocimientos(idConocimientos,idResultado) values(idCon,idRes);
        
        while(i < 11) do
			if(i=1)then
				set calif = c1;
            else
				if(i=2)then
					set calif = c2;
                else
					if(i=3)then
						set calif = c3;
					else
						if(i=4)then
							set calif = c4;
						else
							if(i=5)then
								set calif = c5;
							else
								if(i=6)then
									set calif = c6;
								else
									if(i=7)then
										set calif = c7;
									else
										if(i=8)then
											set calif = c8;
										else
											if(i=9)then
												set calif = c9;
                                            else
												set calif = c10;
											end if;
										end if;
									end if;
								end if;
							end if;
						end if;
					end if;
                end if;
            end if;
            set idCalifCon = (select ifnull(max(idCalif),0)+1 from CalifConocimientos);
			set idMa = i;
            insert into CalifConocimientos(idCalif,idConocimientos,idMateria,calif) values(idCalifCon,idCon,idMa,calif);
            set i = i+1;
            
        end while;
        
        set msj = 'Resultado agregado con éxito';
    else
    
		set msj = 'El resultado ya existe';
    
    end if;
    
else
	set msj = 'en este momento no se pueden actualizar cuestionarios';
end if;

select msj;

end; **
delimiter ;

drop procedure if exists spConsultaAptitudes;
delimiter **
create procedure spConsultaAptitudes(in idUsr int)
begin
declare existe int;
declare c1 int;
declare c2 int;
declare c3 int;
declare c4 int;
declare c5 int;
declare c6 int;
declare c7 int;
declare c8 int;
declare c9 int;
declare c10 int;
declare msj nvarchar(200);
declare i int;
declare idRes int;
declare idAp int;

set existe = (select count(*) from Resultados where idUsuario = idUsr and idCuestionario = 1);

if existe = 1 then
	set idRes = (select (idResultado) from Resultados where idUsuario = idUsr and idCuestionario = 1);
    set idAp = (select (idAptitudes) from Aptitudes where idResultado = idRes);
    set i = 1;
    while(i < 11) do
		if i = 1 then
			set c1 = (select (valorAptitudes) from DetalleAptitudes where idAptitudes = idAp and idCampo = 1);
        else
			if i = 2 then 
				set c2 = (select (valorAptitudes) from DetalleAptitudes where idAptitudes = idAp and idCampo = 2);
            else
				if i = 3 then
					set c3 = (select (valorAptitudes) from DetalleAptitudes where idAptitudes = idAp and idCampo = 3);
                else
					if i = 4 then
						set c4 = (select (valorAptitudes) from DetalleAptitudes where idAptitudes = idAp and idCampo = 4);
                    else
						if i = 5 then
							set c5 = (select (valorAptitudes) from DetalleAptitudes where idAptitudes = idAp and idCampo = 5);
						else
							if i = 6 then
								set c6 = (select (valorAptitudes) from DetalleAptitudes where idAptitudes = idAp and idCampo = 6);
                            else
								if i = 7 then
									set c7 = (select (valorAptitudes) from DetalleAptitudes where idAptitudes = idAp and idCampo = 7);
                                else
									if i = 8 then
										set c8 = (select (valorAptitudes) from DetalleAptitudes where idAptitudes = idAp and idCampo = 8);
                                    else
										if i = 9 then
											set c9 = (select (valorAptitudes) from DetalleAptitudes where idAptitudes = idAp and idCampo = 9);
                                        else
											set c10 = (select (valorAptitudes) from DetalleAptitudes where idAptitudes = idAp and idCampo = 10);
                                        end if;
                                    end if;
                                end if;
                            end if;
						end if;
                    end if;
                end if;
            end if;
        end if;
    
		set i = i+1;
    end while;
	set msj ='El resultado es:';
else
	
    set msj = 'El usuario aún no realiza el cuestionario de Aptitudes';
    
end if;

if existe = 1 then
	select msj,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10;
else
	select msj;
end if;
end; **
delimiter ;

drop procedure if exists spConsultaCalif;
delimiter **
create procedure spConsultaCalif(in idUsr int)
begin
declare existe int;
declare c1 int;
declare c2 int;
declare c3 int;
declare c4 int;
declare c5 int;
declare c6 int;
declare c7 int;
declare c8 int;
declare c9 int;
declare c10 int;
declare c11 int;
declare c12 int;
declare c13 int;
declare c14 int;
declare c15 int;
declare c16 int;
declare c17 int;
declare c18 int;
declare c19 int;
declare c20 int;
declare suma1 int;
declare suma2 int;
declare msj nvarchar(200);
declare msj2 nvarchar(200);
declare i int;
declare idRes int;
declare idCon int;
declare idCal int;

set existe = (select count(*) from Resultados where idUsuario = idUsr and idCuestionario = 3);

	if existe = 2 then
		set idRes = (select (max(idResultado)) from Resultados where idUsuario = idUsr and idCuestionario = 3);
		set idCon = (select (idConocimientos) from Conocimientos where idResultado = idRes);
		set i = 1;
		while(i < 11) do
			if i = 1 then
				set c1 = (select (calif) from CalifConocimientos where idConocimientos = idCon and idMateria = 1);
			else
				if i = 2 then 
					set c2 = (select (calif) from CalifConocimientos where idConocimientos = idCon and idMateria = 2);
				else
					if i = 3 then
						set c3 = (select (calif) from CalifConocimientos where idConocimientos = idCon and idMateria = 3);
					else
						if i = 4 then
							set c4 = (select (calif) from CalifConocimientos where idConocimientos = idCon and idMateria = 4);
						else
							if i = 5 then
								set c5 = (select (calif) from CalifConocimientos where idConocimientos = idCon and idMateria = 5);
							else
								if i = 6 then
									set c6 = (select (calif) from CalifConocimientos where idConocimientos = idCon and idMateria = 6);
								else
									if i = 7 then
										set c7 = (select (calif) from CalifConocimientos where idConocimientos = idCon and idMateria = 7);
									else
										if i = 8 then
											set c8 = (select (calif) from CalifConocimientos where idConocimientos = idCon and idMateria = 8);
										else
											if i = 9 then
												set c9 = (select (calif) from CalifConocimientos where idConocimientos = idCon and idMateria = 9);
											else
												set c10 = (select (calif) from CalifConocimientos where idConocimientos = idCon and idMateria = 10);
											end if;
										end if;
									end if;
								end if;
							end if;
						end if;
					end if;
				end if;
			end if;
			set i = i+1;
		end while;
		set msj ='ok';
        set suma1 = (c1+c2+c3+c4+c5+c6+c7+c8+c9+c10);
        set idRes = (select (min(idResultado)) from Resultados where idUsuario = idUsr and idCuestionario = 3);
		set idCon = (select (idConocimientos) from Conocimientos where idResultado = idRes);
		set i = 1;
		while(i < 11) do
			if i = 1 then
				set c11 = (select (calif) from CalifConocimientos where idConocimientos = idCon and idMateria = 1);
			else
				if i = 2 then 
					set c12 = (select (calif) from CalifConocimientos where idConocimientos = idCon and idMateria = 2);
				else
					if i = 3 then
						set c13 = (select (calif) from CalifConocimientos where idConocimientos = idCon and idMateria = 3);
					else
						if i = 4 then
							set c14 = (select (calif) from CalifConocimientos where idConocimientos = idCon and idMateria = 4);
						else
							if i = 5 then
								set c15 = (select (calif) from CalifConocimientos where idConocimientos = idCon and idMateria = 5);
							else
								if i = 6 then
									set c16 = (select (calif) from CalifConocimientos where idConocimientos = idCon and idMateria = 6);
								else
									if i = 7 then
										set c17 = (select (calif) from CalifConocimientos where idConocimientos = idCon and idMateria = 7);
									else
										if i = 8 then
											set c18 = (select (calif) from CalifConocimientos where idConocimientos = idCon and idMateria = 8);
										else
											if i = 9 then
												set c19 = (select (calif) from CalifConocimientos where idConocimientos = idCon and idMateria = 9);
											else
												set c20 = (select (calif) from CalifConocimientos where idConocimientos = idCon and idMateria = 10);
											end if;
										end if;
									end if;
								end if;
							end if;
						end if;
					end if;
				end if;
			end if;
			set i = i+1;
		end while;
        set msj2 = 'ok';
		set suma2 = (c11+c12+c13+c14+c15+c16+c17+c18+c19+c20);
        select msj,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,suma1,msj2,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20,suma2;
	else
    if existe = 1 then
	set idRes = (select (idResultado) from Resultados where idUsuario = idUsr and idCuestionario = 3);
    set idCon = (select (idConocimientos) from Conocimientos where idResultado = idRes);
    set i = 1;
    while(i < 11) do
		if i = 1 then
			set c1 = (select (calif) from CalifConocimientos where idConocimientos = idCon and idMateria = 1);
        else
			if i = 2 then 
				set c2 = (select (calif) from CalifConocimientos where idConocimientos = idCon and idMateria = 2);
            else
				if i = 3 then
					set c3 = (select (calif) from CalifConocimientos where idConocimientos = idCon and idMateria = 3);
                else
					if i = 4 then
						set c4 = (select (calif) from CalifConocimientos where idConocimientos = idCon and idMateria = 4);
                    else
						if i = 5 then
							set c5 = (select (calif) from CalifConocimientos where idConocimientos = idCon and idMateria = 5);
						else
							if i = 6 then
								set c6 = (select (calif) from CalifConocimientos where idConocimientos = idCon and idMateria = 6);
                            else
								if i = 7 then
									set c7 = (select (calif) from CalifConocimientos where idConocimientos = idCon and idMateria = 7);
                                else
									if i = 8 then
										set c8 = (select (calif) from CalifConocimientos where idConocimientos = idCon and idMateria = 8);
                                    else
										if i = 9 then
											set c9 = (select (calif) from CalifConocimientos where idConocimientos = idCon and idMateria = 9);
                                        else
											set c10 = (select (calif) from CalifConocimientos where idConocimientos = idCon and idMateria = 10);
                                        end if;
                                    end if;
                                end if;
                            end if;
						end if;
                    end if;
                end if;
            end if;
        end if;
		set i = i+1;
    end while;
    set msj = 'ok';
	select msj,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10;
else
		set msj = 'El usuario aún no realiza el cuestionario de tipo Examen';
        select msj;
    end if;
end if;

end; **
delimiter ;

drop procedure if exists spGuardaResNecesidades;
delimiter **
create procedure spGuardaNecesidades(in idRes int, in idUsr int, in idCuest int, in idNe int,in v1 int,in v2 int,in v3 int,in v4 int,in v5 int,in v6 int,in v7 int,in v8 int)
begin
declare existeReg int;
declare existeUsr int;
declare calif int;
declare i int;
declare msj nvarchar(200);

if idRes = 0 then
	
    set existeReg = (select count(*) from resultados where idUsuario = idUsr and idCuestionario = idCuest);
    set existeUsr = (select count(*) from usuarios where idUsuario = idUsr);
    
    if(existeReg = 0 and existeUsr = 1 and idCuest=2 ) then
		
        set idRes =  (select ifnull(max(idResultado),0)+1 from Resultados);
        set idNe = (select ifnull(max(idNecesidades),0)+1 from Necesidades);
        insert into resultados(idResultado, idUsuario, idCuestionario) values(idRes, idUsr, idCuest);
		set i=1;
        while(i < 9) do
			if(i=1)then
				set calif = v1;
            else
				if(i=2)then
					set calif = v2;
                else
					if(i=3)then
						set calif = v3;
					else
						if(i=4)then
							set calif = v4;
						else
							if(i=5)then
								set calif = v5;
							else
								if(i=6)then
									set calif = v6;
								else
									if(i=7)then
										set calif = v7;
									else
										set calif = v8;
									end if;
								end if;
							end if;
						end if;
					end if;
                end if;
            end if;
            set idNe = (select ifnull(max(idNecesidades),0)+1 from Necesidades);
            insert into Necesidades(idNecesidades,idResultado,valor) values(idNe,idRes,calif);
            set i = i+1;
            
        end while;
        
        set msj = 'Resultado agregado con éxito';
        
        
   else
    
		set msj = 'El resultado ya existe';
    
    end if;
    
else
	set msj = 'en este momento no se pueden actualizar cuestionarios';
end if;

select msj;

end; **
delimiter ;

drop procedure if exists spConsultaNecesidades;
delimiter **
create procedure spConsultaNecesidades(in idUsr int)
begin
declare msj nvarchar(200);
declare existe int;
declare idRes int;
declare idN int;
declare c1 int;
declare c2 int;
declare c3 int;
declare c4 int;
declare c5 int;
declare c6 int;
declare c7 int;
declare c8 int;
declare i int;
declare suma int;

set existe = (select count(*) from Resultados where idUsuario = idUsr and idCuestionario = 2);

if existe = 1 then
	set idRes = (select (idResultado) from Resultados where idUsuario = idUsr and idCuestionario = 2);
    set idN = (select (min(idNecesidades)) from necesidades where idResultado = idRes);
    set i = 1;
    while(i < 9) do
		if i = 1 then
			set c1 = (select (valor) from necesidades where idResultado = idRes and idNecesidades = idN);
        else
			if i = 2 then 
				set c2 = (select (valor) from necesidades where idResultado = idRes and idNecesidades = idN + 1);
            else
				if i = 3 then
					set c3 = (select (valor) from necesidades where idResultado = idRes and idNecesidades = (idN + 2));
                else
					if i = 4 then
						set c4 = (select (valor) from necesidades where idResultado = idRes and idNecesidades = idN + 3);
                    else
						if i = 5 then
							set c5 = (select (valor) from necesidades where idResultado = idRes and idNecesidades = idN + 4);
						else
							if i = 6 then
								set c6 = (select (valor) from necesidades where idResultado = idRes and idNecesidades = idN + 5);
                            else
								if i = 7 then
									set c7 = (select (valor) from necesidades where idResultado = idRes and idNecesidades = idN + 6);
                                else
									set c8 = (select (valor) from necesidades where idResultado = idRes and idNecesidades = idN + 7);
                                end if;
                            end if;
						end if;
                    end if;
                end if;
            end if;
        end if;
		set i = i+1;
    end while;
    set suma = (c1+c2+c3+c4+c5+c6+c7+c8);
    set msj = 'ok';
	select msj,c1,c2,c3,c4,c5,c6,c7,c8,suma;
else
	set msj = 'El usr aun no realiza el cuestionario de Necesidades';
    select msj;
end if;

end; **
delimiter ;
## 	Cuestionarios ===================================================================================================================================================================================

##No borrar!!!sp Para Eliminar Aptitudes ===========================================================================
drop procedure if exists spDestruyeRegAptitudes;
delimiter **
create procedure spDestruyeRegAptitudes(in idUsr int)
begin
declare existe int;
declare msj nvarchar(200);
declare idRes int;

set existe = (select count(*) from resultados where idUsuario = idUsr and idCuestionario = 1);

if existe = 1 then
	set idRes = (select idResultado from Resultados where idUsuario = idUsr and idCuestionario = 1);
    call spDestryeAptitudes(idRes);
    delete from resultados where idUsuario =idUsr and idCuestionario = 1;
    set msj = 'ok';
    select msj;
else
	set msj = 'El usr no ha hecho el cuestionario';
    select msj;
end if;

end; **
delimiter ;

drop procedure if exists spDestryeAptitudes;
delimiter **
create procedure spDestryeAptitudes(in idRes int)
begin
declare idAp int;
declare msj nvarchar(200);

set idAp = (select idAptitudes from aptitudes where idResultado = idRes);
call spDestruyeDetalleAptitudes(idAp);
delete from aptitudes where idResultado = idRes;

end; **
delimiter ;

drop procedure if exists spDestruyeDetalleAptitudes;
delimiter ** 
create procedure spDestruyeDetalleAptitudes(in idAp int)
begin
    delete from DetalleAptitudes where idAptitudes = idAp;
end; **
delimiter ;
##No borrar!!! sp Para Eliminar Aptitudes===========================================================================

##No borrar!!! sp Para Eliminar Examen===========================================================================
drop procedure if exists spDestruyeRegConocimientos;
delimiter **
create procedure spDestruyeRegConocimientos(in idUsr int)
begin 
declare existe int;
declare msj nvarchar(200);
declare idRes int;

set existe = (select count(*) from Resultados where idUsuario = idUsr and idCuestionario = 3);

if (1) then
	set idRes =(select idResultado from Resultados where idUsuario = idUsr and idCuestionario = 3);
    call spDestruyeConocimientos(idRes);
    delete from Resultados where idUsuario = idUsr and idCuestionario = 3;
    set msj = 'OK';
    select msj;
else 
	set msj = 'El usr aún no a realizado el examen';
end if;

end; **
delimiter ;

drop procedure if exists spDestruyeConocimientos;
delimiter **
create procedure spDestruyeConocimientos(in idRes int)
begin
declare idCon int;

set idCon = (select idConocimientos from conocimientos where idResultado = idRes);
call spDestruyeCalif(idCon);
delete from Conocimientos where idResultado = idRes;

end; **
delimiter ;

drop procedure if exists spDestruyeCalif;
delimiter **
create procedure spDestruyeCalif(in idCon int)
begin 

delete from CalifConocimientos where idConocimientos = idCon;

end; **
delimiter ;
##No borrar!!! sp Para Eliminar Examen===========================================================================

##No borrar!!! sp Para Eliminar Necesidades===========================================================================
drop procedure if exists spDestruyeRegNecesidades;
delimiter **
create procedure spDestruyeRegNecesidades(in idUsr int)
begin 
declare existe int;
declare idRes int;
declare msj nvarchar(200);

set existe = (select count(*) from Resultados where idUsuario = idUsr and idCuestionario = 2);

if existe = 1 then
	
    set idRes = (select idResultado from Resultados where idUsuario = idUsr and idCuestionario = 2);
    call spDestruyeNecesidades(idRes);
    delete from Resultados where idResultado = idRes and idCuestionario = 2;
    set msj = 'ok';
    select msj;
else
	set msj = 'El usr aún no ha hecho el cuestionario';
    select msj;
end if;

end; **
delimiter ; 

drop procedure if exists spDestruyeNecesidades;
delimiter **
create procedure spDestruyeNecesidades(in idRes int)
begin

delete from Necesidades where idResultado = idRes;

end; **
delimiter ;
##No borrar!!! sp Para Eliminar Necesidades===========================================================================

##Guardar y consultar Histporial =====================================================================================
drop procedure if exists spGuardaHistorial;
delimiter **
create procedure spGuardaHistorial(in idHist int,in idUsr int,in Ap int,in Ex int,in Nec int,in Esc nvarchar(200))
begin
declare msj nvarchar(200);

if idHist = 0 then
	set idHist = (select ifnull(max(idHistorial),0)+1 from Historial);
    insert into Historial(idHistorial,idUsuario,aptitudes,examen,necesidades,escuela) values (idHist,idUsr,Ap,Ex,Nec,Esc);
	set msj = 'Historial agregado corrctamente';
    select msj;
else
	set msj = 'No hay Actualizacion de historial eneste momento';
    select msj;
end if;
end; **
delimiter ;

drop procedure if exists spConsultaHistorial;
delimiter **
create procedure spConsultaHistorial(in idUsr int)
begin
declare existe int;
declare msj nvarchar(200);

set existe = (select count(*) from Historial where idUsuario = idUsr);

if existe = 0 then
	set msj = 'Aun no hay registros para ese usr';
    select msj;
else
	select * from Historial where idUsuario = idUsr;
end if;

end; **
delimiter ;
##Guardar y consultar Histporial =====================================================================================


drop procedure if exists spEliminaUsuarios;
delimiter **
create procedure spEliminaUsuarios(in idUsr int) 
begin
declare existe int;
declare tipo int;
declare msjFinal nvarchar(200);

set existe =(select count(*) from vwUsuarios where idUsuario = idUsr);

if existe = 1 then 
	
	set tipo = (select idTipo from vwUsuarios where idUsuario = idUsr);
    
    if tipo = 3 then
		call spEliminaComentariosUsr(idUsr);
		delete from EscEgresado where idUsuario = idUsr;
        delete from Usuarios where idUsuario = idUsr;
		set msjFinal  = 'ok';
    else
		call spDestruyeRegAptitudes(idUsr);
		call spDestruyeRegConocimientos(idUsr);
		call spDestruyeRegNecesidades(idUsr);
        delete from historial where idUsuario = idUsr;
		delete from Usuarios where idUsuario = idUsr;
		set msjFinal = 'ok';
    
    end if;
    
else
	set msjFinal  = 'El usr no existe';
end if;

select msjFinal ;

end; **
delimiter ;


call spGuardaUsuarios(0,1,2,'Obed','obed@gmail.com',17,'qwerty');
call spValidaUsr('obed@gmail.com','qwerty');
call spGuardaResAptitudes(0,32,1,0,0,0,5,1,6,5,6,3,5,3,6,1);
call spGuardaNecesidades(0,32,2,0,1,0,1,0,0,1,1,0);
call spGuardaResConocimiento(0,30,3,0,0,0,12,9,9,8,7,8,9,7,6,8);
call spGuardaResConocimiento(0,32,3,0,0,0,12,12,8,9,7,8,9,10,10,9);
select * from vwConocimientos;
call spConsultaCalif(32);
call spConsultaAptitudes(32);
##select * from Necesidades;

##SP PARA evaluar aptitudes y recomendar escuela 
##eviar mail para solicitar revision de cuestionarios
##catalogo de carreras
##direccion de cada escuela

###select * from escEgresado;
##select * from vwUsuarios;
call spActualizaContraseña(32,'qwerty','123');
call spTraeDatos(32);
call spConsultaNecesidades(32);
select * from vwAlumnos where idGenero = 2 order by idUsuario;
call spGuardaHistorial(0,32,50,125,6,'Cecyt 9');
##call spDestruyeRegAptitudes(32);
##call spDestruyeRegConocimientos(32);
##call spDestruyeRegNecesidades(32);
call spConsultaHistorial(32);
call spGuardaEgresado(0,3,2,'Obed Abimael Islas Ortigoza','obedisor@gmail.com',16,'123',0,9);
call spGuardaComentarios(0,33,9,'Es muy dificil :c');
call spGuardaComentarios(0,33,9,'Es una escuela muy buena');
call spValidaEgresado('obedisor@gmail.com','123');
call spConsultaComentariosEsc(9);
select * from vwComentarios;
call spTraeDatos(32);
##call spEliminaComentariosId(2);
##call spEliminaComentariosUsr(33);
select * from vwComentarios;
call spActualizaEgrsado(33,'Obed','obedisor@gmail.com',17,2,'a');
##call spEliminaUsuarios(31);