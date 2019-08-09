----- INSERT Users: senha de todos: 123456
INSERT INTO users(name,username,email,password, created_at) VALUES ('Talita Costa', 'talitacosta', 'talita.costa@yahoo.com','$2a$10$Q27l9vHLV7IDoQhYYE8sC.d7M5zgTIqc6mRx6RYrnk2mpqLi91./2', current_timestamp);
INSERT INTO users(name,username,email,password, created_at) VALUES ('Félix Saraiva','felixsaraiva', 'flix_saraiva@hotmail.com','$2a$10$Q27l9vHLV7IDoQhYYE8sC.d7M5zgTIqc6mRx6RYrnk2mpqLi91./2', current_timestamp);
INSERT INTO users(name,username,email,password, created_at) VALUES ('Alessandro Melo','alessandromelo', 'alessandro94@live.com','$2a$10$Q27l9vHLV7IDoQhYYE8sC.d7M5zgTIqc6mRx6RYrnk2mpqLi91./2', current_timestamp);
INSERT INTO users(name,username,email,password, created_at) VALUES ('Deneval Melo', 'denevalmelo', 'deneval.melo@yahoo.com','$2a$10$Q27l9vHLV7IDoQhYYE8sC.d7M5zgTIqc6mRx6RYrnk2mpqLi91./2', current_timestamp);
INSERT INTO users(name,username,email,password, created_at) VALUES ('Salvador Reis', 'salvadorreis', 'salvador_reis@bol.com.br','$2a$10$Q27l9vHLV7IDoQhYYE8sC.d7M5zgTIqc6mRx6RYrnk2mpqLi91./2', current_timestamp);

----- INSERT SCRIPT: addresses
INSERT INTO addresses(name,address,city,state,country,lat,long,created_at) VALUES ('MASP','Av. Paulista, 1578 - Bela Vista','São Paulo','SP','Brazil',-23.5609048,-46.6849555,current_timestamp);
INSERT INTO addresses(name,address,city,state,country,lat,long,created_at) VALUES ('Beco do Batman','R. Gonçalo Afonso - Vila Madalena','São Paulo','SP','Brazil',-23.5566759,-46.6857404,current_timestamp);
INSERT INTO addresses(name,address,city,state,country,lat,long,created_at) VALUES ('Shopping Plaza Sul','Praça Leonor Kaupa, 100 - Jardim da Saúde','São Paulo','SP','Brazil',-23.619575,-46.627023,current_timestamp);
INSERT INTO addresses(name,address,city,state,country,lat,long,created_at) VALUES ('Arena Caixa - Centro de Atletismo Professor Oswaldo Terra','R. Tiradentes, 1845 - Santa Terezinha','São Bernardo do Campo','SP','Brazil',-23.725778,-46.532081,current_timestamp);
INSERT INTO addresses(name,address,city,state,country,lat,long,created_at) VALUES ('Jardim Botanico','R. Engo. Ostoja Roguski - Jardim Botânico','Curitiba','PR','Brazil',-25.42778,-49.27306,current_timestamp);
INSERT INTO addresses(name,address,city,state,country,lat,long,created_at) VALUES ('Pedra Careca Restaurante','Praia da Joaquina, 2500','Florianópolis','SC','Brazil',-27.6343625,-48.4542951,current_timestamp);
INSERT INTO addresses(name,address,city,state,country,lat,long,created_at) VALUES ('Museu de Armas Major Lara Ribas','Av. Osvaldo Rodrigues Cabral, 525 - Centro','Florianópolis','SC','Brazil',-27.5944704,-48.561893,current_timestamp);
INSERT INTO addresses(name,address,city,state,country,lat,long,created_at) VALUES ('Casa de Cultura Mário Quintana','R. dos Andradas, 736 - Centro Histórico','Porto Alegre','RS','Brazil',-30.03306,-51.23,current_timestamp);
INSERT INTO addresses(name,address,city,state,country,lat,long,created_at) VALUES ('Centro de Convenções Arquiteto Rubens Gil de Camillo','Av. Waldir dos Santos Pereira, s/n - Parque dos Poderes','Campo Grande','MS','Brazil',-20.4504541,-54.557574,current_timestamp);
INSERT INTO addresses(name,address,city,state,country,lat,long,created_at) VALUES ('Teatro Amazonas','Avenida Eduardo Ribeiro, Centro','Manaus','AM','Brazil',-3.10194,-60.025,current_timestamp);

----- INSERT SCRIPT: partners
INSERT INTO partners(address_id, availableServices0,availableServices1,created_at) VALUES (floor(random() * 10) + 1, 'DRY_WASHING',NULL,current_timestamp);
INSERT INTO partners(address_id, availableServices0,availableServices1,created_at) VALUES (floor(random() * 10) + 1, 'OIL_CHANGE','DRY_WASHING',current_timestamp);
INSERT INTO partners(address_id, availableServices0,availableServices1,created_at) VALUES (floor(random() * 10) + 1, 'DRY_WASHING',NULL,current_timestamp);
INSERT INTO partners(address_id, availableServices0,availableServices1,created_at) VALUES (floor(random() * 10) + 1, 'DRY_WASHING','OIL_CHANGE',current_timestamp);
INSERT INTO partners(address_id, availableServices0,availableServices1,created_at) VALUES (floor(random() * 10) + 1, 'OIL_CHANGE',NULL,current_timestamp);
INSERT INTO partners(address_id, availableServices0,availableServices1,created_at) VALUES (floor(random() * 10) + 1, 'OIL_CHANGE','DRY_WASHING',current_timestamp);
INSERT INTO partners(address_id, availableServices0,availableServices1,created_at) VALUES (floor(random() * 10) + 1, 'OIL_CHANGE','DRY_WASHING',current_timestamp);
INSERT INTO partners(address_id, availableServices0,availableServices1,created_at) VALUES (floor(random() * 10) + 1, 'DRY_WASHING','OIL_CHANGE',current_timestamp);
INSERT INTO partners(address_id, availableServices0,availableServices1,created_at) VALUES (floor(random() * 10) + 1, 'DRY_WASHING',NULL,current_timestamp);
INSERT INTO partners(address_id, availableServices0,availableServices1,created_at) VALUES (floor(random() * 10) + 1, 'DRY_WASHING',NULL,current_timestamp);
INSERT INTO partners(address_id, availableServices0,availableServices1,created_at) VALUES (floor(random() * 10) + 1, 'DRY_WASHING',NULL,current_timestamp);
INSERT INTO partners(address_id, availableServices0,availableServices1,created_at) VALUES (floor(random() * 10) + 1, 'OIL_CHANGE','DRY_WASHING',current_timestamp);
INSERT INTO partners(address_id, availableServices0,availableServices1,created_at) VALUES (floor(random() * 10) + 1, 'DRY_WASHING','OIL_CHANGE',current_timestamp);
INSERT INTO partners(address_id, availableServices0,availableServices1,created_at) VALUES (floor(random() * 10) + 1, 'DRY_WASHING',NULL,current_timestamp);
INSERT INTO partners(address_id, availableServices0,availableServices1,created_at) VALUES (floor(random() * 10) + 1, 'DRY_WASHING','OIL_CHANGE',current_timestamp);
INSERT INTO partners(address_id, availableServices0,availableServices1,created_at) VALUES (floor(random() * 10) + 1, 'DRY_WASHING',NULL,current_timestamp);
INSERT INTO partners(address_id, availableServices0,availableServices1,created_at) VALUES (floor(random() * 10) + 1, 'DRY_WASHING',NULL,current_timestamp);
INSERT INTO partners(address_id, availableServices0,availableServices1,created_at) VALUES (floor(random() * 10) + 1, 'OIL_CHANGE','DRY_WASHING',current_timestamp);
INSERT INTO partners(address_id, availableServices0,availableServices1,created_at) VALUES (floor(random() * 10) + 1, 'OIL_CHANGE',NULL,current_timestamp);
INSERT INTO partners(address_id, availableServices0,availableServices1,created_at) VALUES (floor(random() * 10) + 1, 'DRY_WASHING',NULL,current_timestamp);