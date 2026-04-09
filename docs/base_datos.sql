
CREATE DATABASE IF NOT EXISTS horarios_ucc;
USE horarios_ucc;

CREATE TABLE docentes (
    id_docente INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    especialidad VARCHAR(100)
);

CREATE TABLE aulas (
    id_aula INT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(50) NOT NULL
);


CREATE TABLE clases (
    id_clase INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    especialidad VARCHAR(100),
    tipo VARCHAR(50),
    creditos INT
);


CREATE TABLE periodos (
    id_periodo INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(10) NOT NULL,
    fecha_inicio DATE,
    fecha_fin DATE,
    anio INT
);


CREATE TABLE horarios (
    id_horario INT AUTO_INCREMENT PRIMARY KEY,
    id_docente INT,
    id_aula INT,
    id_clase INT,
    dia VARCHAR(20),
    hora_inicio TIME,
    hora_fin TIME,

    FOREIGN KEY (id_docente) REFERENCES docentes(id_docente),
    FOREIGN KEY (id_aula) REFERENCES aulas(id_aula),
    FOREIGN KEY (id_clase) REFERENCES clases(id_clase)
);



INSERT INTO docentes (nombre, especialidad) VALUES
('Juan Perez', 'Matematica'),
('Maria Lopez', 'Programacion');

INSERT INTO aulas (tipo) VALUES
('Aula'),
('Laboratorio');

INSERT INTO clases (nombre, especialidad, tipo, creditos) VALUES
('Matematica I', 'Matematica', 'Teorica', 3),
('Programacion I', 'Programacion', 'Laboratorio', 4);

INSERT INTO periodos (nombre, fecha_inicio, fecha_fin, anio) VALUES
('I', '2026-01-15', '2026-06-15', 2026);

