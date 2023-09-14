create table categorias(
  id serial primary key,
  nome varchar(50) not null);


create table produtos(
  id serial primary key,
  nome varchar(100) not null,
  descricao text, 
  preco int not null,
  quantidade_em_estoque int,
  categoria_id int references categorias (id)
);


create table clientes(
  cpf char(11)not null unique,
  nome varchar(150) not null);

create table vendedores(
  cpf char(11) not null unique,
  nome varchar(150) not null);
  
  create table pedidos(
 id serial primary key,
 valor int,
 cliente_cpf char(11) references clientes(cpf),
 vendedor_cpf char(11) references vendedores(cpf));
 
  create table itens_do_pedido(
  id serial primary key,
  pedido_id int references pedidos(id),
  quantidade int not null,
  produto_id int references produtos(id));
     


insert into categorias (nome)
values
('frutas'),
('verduras'),
('massas'),
('bebidas'),
('utilidades');

insert into produtos (nome, descricao, preco, quantidade_em_estoque, categoria_id)
values
('Maça', 'Bonita e faz crek ao morder',300 ,94 ,1 ),
('Cebola', 'Faz chorar',90 ,344 ,2 ),
('Abacate', 'NÃO CONTÉM GLÚTEN.',90 ,50 ,1 ),
('Tomate', 'Rico em vitaminas A, B e C.',150 ,100 ,1 ),
('Acelga', 'NÃO CONTÉM GLÚTEN.',170 ,23 ,2 ),
('Macarrão parafuso', 'Sêmola de trigo enriquecida com ferro e ácido fólico, ovos e corantes naturais',150 ,30 ,3 ),
('Massa para lasanha', 'Uma reunião de família precisa ter comida boa e muita alegria.',300 ,50 ,3 ),
('Refrigerante coca cola lata', 'Sabor original',350 ,24 ,4 ),
('Refrigerante Pepsi 2l', 'NÃO CONTÉM GLÚTEN. NÃO ALCOÓLICO.',350 ,25 ,4 ),
('Cerveja Heineken 600ml', 'Heineken é uma cerveja lager Puro Malte, refrescante e de cor amarelo-dourado',400 ,40 ,4 ),
('Agua mineral sem gás', 'Smartwater é água adicionado de sais mineirais (cálcio, potássio e magnésio) livre de sódio e com pH neutro.',200 ,10 ,4 ),
('Vassoura', 'Pigmento, matéria sintética e metal.',700 ,55 ,5 ),
('Saco para lixo', 'Reforçado para garantir mais segurança',500 ,55 ,5 ),
('Escova dental', 'Faça uma limpeza profunda com a tecnologia inovadora',400 ,33 ,5 ),
('Balde para lixo 50l', 'Possui tampa e fabricado com material reciclado',1200 ,36 ,5 ),
('Manga', 'Rico em Vitamina A, potássio e vitamina C',300 ,77 ,1 ),
('Uva', 'NÃO CONTÉM GLÚTEN.',135 ,32 ,1 );

insert into clientes (cpf, nome)
values
('80371350042','José Augusto Silva'),
('67642869061','Antonio Oliveira'),
('63193310034','Ana Rodrigues'),
('75670505018','Maria da Conceição');

insert into vendedores (cpf, nome)
values
('82539841031','Rodrigo Sampaio'),
('23262546003','Beatriz Souza Santos'),
('28007155023','Carlos Eduardo');

insert into pedidos(valor, cliente_cpf, vendedor_cpf)
values
(0, '63193310034' , '23262546003'),



-- pedidos

update pedidos
set valor = 300*10 + 135*3 + 300*5 + 150*10 + 170*2;

update produtos 
set quantidade_em_estoque = quantidade_em_estoque - 10
where id = 18;

update produtos 
set quantidade_em_estoque = quantidade_em_estoque - 3
where id = 19;

update produtos 
set quantidade_em_estoque = quantidade_em_estoque - 5
where id = 2;

update produtos 
set quantidade_em_estoque = quantidade_em_estoque - 10
where id = 6;

update produtos 
set quantidade_em_estoque = quantidade_em_estoque - 2
where id = 7;



select * from produtos
where categoria_id = 2;

   
		



