INSERT INTO pais(nombre)
VALUES ("Colombia"),
("Chile"),
("Venezuela"),
("Argentina"),
("Peru"),
("Bolivia"),
("Ecuador"),
("Brasil"),
("Paraguay"),
("Uruguay");

INSERT INTO region(nombre, idPais)
VALUES 
("Santander", 1),
("Antioquia", 1),
("Cundinamarca", 1),
("Valle del Cauca", 1),
("Atlántico", 1),
("Santiago", 2),
("Valparaíso", 2),
("Biobío", 2),
("Antofagasta", 2),
("Maule", 2),
("Distrito Capital", 3),
("Zulia", 3),
("Carabobo", 3),
("Lara", 3),
("Anzoátegui", 3),
("Buenos Aires", 4),
("Córdoba", 4),
("Santa Fe", 4),
("Mendoza", 4),
("Tucumán", 4),
("Lima", 5),
("Arequipa", 5),
("Cusco", 5),
("Piura", 5),
("La Libertad", 5),
("La Paz", 6),
("Santa Cruz", 6),
("Cochabamba", 6),
("Oruro", 6),
("Potosí", 6),
("Pichincha", 7),
("Guayas", 7),
("Manabí", 7),
("Azuay", 7),
("El Oro", 7),
("São Paulo", 8),
("Rio de Janeiro", 8),
("Minas Gerais", 8),
("Bahia", 8),
("Paraná", 8),
("Asunción", 9),
("Central", 9),
("Alto Paraná", 9),
("Itapúa", 9),
("Amambay", 9),
("Montevideo", 10),
("Canelones", 10),
("Maldonado", 10),
("Salto", 10),
("Paysandú", 10);

INSERT INTO ciudad(nombre, idRegion) 
VALUES ("Bucaramanga", 1),
("Piedecuesta", 1),
("Medellín", 2),
("Envigado", 2),
("Bogotá", 3),
("Soacha", 3),
("Cali", 4),
("Palmira", 4),
("Barranquilla", 5),
("Soledad", 5),
("Santiago", 6),
("Providencia", 6),
("Valparaíso", 7),
("Viña del Mar", 7),
("Concepción", 8),
("Talcahuano", 8),
("Antofagasta", 9),
("Calama", 9),
("Talca", 10),
("Curicó", 10),
("Caracas", 11),
("Maracaibo", 12),
("Valencia", 13),
("Barquisimeto", 14),
("Barcelona", 15),
("Buenos Aires", 16),
("Córdoba", 17),
("Rosario", 18),
("Mendoza", 19),
("San Miguel de Tucumán", 20),
("Lima", 21),
("Arequipa", 22),
("Cusco", 23),
("Piura", 24),
("Trujillo", 25),
("La Paz", 26),
("Santa Cruz de la Sierra", 27),
("Cochabamba", 28),
("Oruro", 29),
("Potosí", 30),
("Quito", 31),
("Guayaquil", 32),
("Portoviejo", 33),
("Cuenca", 34),
("Machala", 35),
("São Paulo", 36),
("Rio de Janeiro", 37),
("Belo Horizonte", 38),
("Salvador", 39),
("Curitiba", 40),
("Asunción", 41),
("Luque", 42),
("Ciudad del Este", 43),
("Encarnación", 44),
("Pedro Juan Caballero", 45),
("Montevideo", 46),
("Canelones", 47),
("Maldonado", 48),
("Salto", 49),
("Paysandú", 50);

INSERT INTO tipoDocumento(nombre)
VALUES ("cedula"), 
("pasaporte");