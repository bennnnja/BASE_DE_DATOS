-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2023-06-13 03:16:03.64

-- tables
-- Table: Abastece
CREATE TABLE Abastece (
    Fabrica_Cod_fabrica int  NOT NULL,
    Sucursal_Cod_sucursal int  NOT NULL,
    Cantidad int  NOT NULL,
    CONSTRAINT Abastece_pk PRIMARY KEY (Fabrica_Cod_fabrica,Sucursal_Cod_sucursal)
);

-- Table: Administracion
CREATE TABLE Administracion (
    ID_Administracion int  NOT NULL,
    NivelJerarquico varchar(30)  NOT NULL,
    ID_empleado int  NOT NULL,
    CONSTRAINT Administracion_pk PRIMARY KEY (ID_Administracion)
);

-- Table: Administracion_Proveedor
CREATE TABLE Administracion_Proveedor (
    Administracion_ID_Administracion int  NOT NULL,
    Proveedor_Cod_proveedor int  NOT NULL,
    CONSTRAINT Administracion_Proveedor_pk PRIMARY KEY (Administracion_ID_Administracion,Proveedor_Cod_proveedor)
);

-- Table: Chofer
CREATE TABLE Chofer (
    ID_Chofer int  NOT NULL,
    Licencia varchar(30)  NOT NULL,
    ID_empleado int  NOT NULL,
    CONSTRAINT Chofer_pk PRIMARY KEY (ID_Chofer)
);

-- Table: Cliente
CREATE TABLE Cliente (
    ID_Cliente int  NOT NULL,
    Historial varchar(50)  NOT NULL,
    rut int  NULL,
    CONSTRAINT Cliente_pk PRIMARY KEY (ID_Cliente)
);

-- Table: Empleado
CREATE TABLE Empleado (
    ID_empleado int  NOT NULL,
    Cargo varchar(30)  NOT NULL,
    Jornada int  NOT NULL,
    rut int  NULL,
    CONSTRAINT Empleado_pk PRIMARY KEY (ID_empleado)
);

-- Table: Fabrica
CREATE TABLE Fabrica (
    Nombre varchar(30)  NOT NULL,
    Telefono int  NOT NULL,
    Ciudad varchar(30)  NOT NULL,
    Ubicacion varchar(30)  NOT NULL,
    Cod_fabrica int  NOT NULL,
    CONSTRAINT Fabrica_pk PRIMARY KEY (Cod_fabrica)
);

-- Table: Fabrica_Persona
CREATE TABLE Fabrica_Persona (
    Fabrica_Cod_fabrica int  NOT NULL,
    Persona_rut int  NULL,
    CONSTRAINT Fabrica_Persona_pk PRIMARY KEY (Fabrica_Cod_fabrica,Persona_rut)
);

-- Table: Heladero
CREATE TABLE Heladero (
    ID_Heladero int  NOT NULL,
    Certificado varchar(30)  NOT NULL,
    ID_empleado int  NOT NULL,
    CONSTRAINT Heladero_pk PRIMARY KEY (ID_Heladero)
);

-- Table: Ingrediente
CREATE TABLE Ingrediente (
    Cod_ingrediente int  NOT NULL,
    Nombre text  NOT NULL,
    Cantidad int  NOT NULL,
    Fecha_ven date  NOT NULL,
    Receta_Cod_receta int  NOT NULL,
    CONSTRAINT Ingrediente_pk PRIMARY KEY (Cod_ingrediente)
);

-- Table: Mayorista
CREATE TABLE Mayorista (
    ID_Mayorista int  NOT NULL,
    Ubicacion varchar(30)  NOT NULL,
    ID_Cliente int  NOT NULL,
    CONSTRAINT Mayorista_pk PRIMARY KEY (ID_Mayorista)
);

-- Table: Minorista
CREATE TABLE Minorista (
    ID_Minorista int  NOT NULL,
    Preferencias_compra varchar(40)  NOT NULL,
    ID_Cliente int  NOT NULL,
    CONSTRAINT Minorista_pk PRIMARY KEY (ID_Minorista)
);

-- Table: Orden_compra
CREATE TABLE Orden_compra (
    Cod_transaccion int  NOT NULL,
    Metodo_pago varchar(30)  NOT NULL,
    Monto int  NOT NULL,
    Detalle varchar(50)  NOT NULL,
    Tipo_comrpobante varchar(20)  NOT NULL,
    Pedido_Cod_pedido int  NOT NULL,
    Persona_rut int  NULL,
    CONSTRAINT Orden_compra_pk PRIMARY KEY (Cod_transaccion)
);

-- Table: Pedido
CREATE TABLE Pedido (
    Cod_pedido int  NOT NULL,
    Descripcion text  NOT NULL,
    Cantidad int  NOT NULL,
    Fecha timestamp  NOT NULL,
    Vendedor_ID_Vendedor int  NOT NULL,
    CONSTRAINT Pedido_pk PRIMARY KEY (Cod_pedido)
);

-- Table: Persona
CREATE TABLE Persona (
    rut int  NULL,
    Correo varchar(50)  NOT NULL,
    Nombre varchar(30)  NOT NULL,
    Apellido varchar(30)  NOT NULL,
    Fecha_naci date  NOT NULL,
    contrasena varchar(30)  NOT NULL,
    Fabrica_Cod_fabrica int  NOT NULL,
    Sucursal_Cod_sucursal int  NOT NULL,
    CONSTRAINT Persona_pk PRIMARY KEY (rut)
);

-- Table: Producto
CREATE TABLE Producto (
    Cod_producto int  NOT NULL,
    Fecha_ven date  NOT NULL,
    Descripcion text  NOT NULL,
    Precio int  NOT NULL,
    Nombre text  NOT NULL,
    Heladero_ID_Heladero int  NOT NULL,
    CONSTRAINT Producto_pk PRIMARY KEY (Cod_producto)
);

-- Table: Proveedor
CREATE TABLE Proveedor (
    Cod_proveedor int  NOT NULL,
    Nombre text  NOT NULL,
    Telefono int  NOT NULL,
    Ubicacion text  NOT NULL,
    Email varchar(50)  NOT NULL,
    CONSTRAINT Proveedor_pk PRIMARY KEY (Cod_proveedor)
);

-- Table: Proveedor_Ingrediente
CREATE TABLE Proveedor_Ingrediente (
    Proveedor_Cod_proveedor int  NOT NULL,
    Ingrediente_Cod_ingrediente int  NOT NULL,
    CONSTRAINT Proveedor_Ingrediente_pk PRIMARY KEY (Proveedor_Cod_proveedor,Ingrediente_Cod_ingrediente)
);

-- Table: Receta
CREATE TABLE Receta (
    Cod_receta int  NOT NULL,
    Pasos text  NOT NULL,
    Descripcion text  NOT NULL,
    Tiempo_prepa time  NOT NULL,
    Producto_Cod_producto int  NOT NULL,
    CONSTRAINT Receta_pk PRIMARY KEY (Cod_receta)
);

-- Table: Sucursal
CREATE TABLE Sucursal (
    Cod_sucursal int  NOT NULL,
    Nombre varchar(30)  NOT NULL,
    Ubicacion varchar(30)  NOT NULL,
    Ciudad varchar(30)  NOT NULL,
    Telefono int  NOT NULL,
    CONSTRAINT Sucursal_pk PRIMARY KEY (Cod_sucursal)
);

-- Table: Sucursal_Persona
CREATE TABLE Sucursal_Persona (
    Sucursal_Cod_sucursal int  NOT NULL,
    Persona_rut int  NULL,
    CONSTRAINT Sucursal_Persona_pk PRIMARY KEY (Sucursal_Cod_sucursal,Persona_rut)
);

-- Table: Vehiculo
CREATE TABLE Vehiculo (
    Patente varchar(20)  NOT NULL,
    Marca text  NOT NULL,
    Fecha_creacion int  NOT NULL,
    Tipo_vehiculo text  NOT NULL,
    Cap_carga int  NOT NULL,
    Chofer_ID_Chofer int  NOT NULL,
    CONSTRAINT Vehiculo_pk PRIMARY KEY (Patente)
);

-- Table: Vehiculo_Pedido
CREATE TABLE Vehiculo_Pedido (
    Vehiculo_Patente varchar(20)  NOT NULL,
    Pedido_Cod_pedido int  NOT NULL,
    CONSTRAINT Vehiculo_Pedido_pk PRIMARY KEY (Vehiculo_Patente,Pedido_Cod_pedido)
);

-- Table: Vendedor
CREATE TABLE Vendedor (
    ID_Vendedor int  NOT NULL,
    Password_caja text  NOT NULL,
    Exp_venta int  NOT NULL,
    Num_caja int  NOT NULL,
    ID_empleado int  NOT NULL,
    CONSTRAINT Vendedor_pk PRIMARY KEY (ID_Vendedor)
);

-- foreign keys
-- Reference: Administracion_Empleado (table: Administracion)
ALTER TABLE Administracion ADD CONSTRAINT Administracion_Empleado
    FOREIGN KEY (ID_empleado)
    REFERENCES Empleado (ID_empleado)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Administracion_Proveedor_Administracion (table: Administracion_Proveedor)
ALTER TABLE Administracion_Proveedor ADD CONSTRAINT Administracion_Proveedor_Administracion
    FOREIGN KEY (Administracion_ID_Administracion)
    REFERENCES Administracion (ID_Administracion)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Administracion_Proveedor_Proveedor (table: Administracion_Proveedor)
ALTER TABLE Administracion_Proveedor ADD CONSTRAINT Administracion_Proveedor_Proveedor
    FOREIGN KEY (Proveedor_Cod_proveedor)
    REFERENCES Proveedor (Cod_proveedor)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Chofer_Empleado (table: Chofer)
ALTER TABLE Chofer ADD CONSTRAINT Chofer_Empleado
    FOREIGN KEY (ID_empleado)
    REFERENCES Empleado (ID_empleado)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Cliente_Persona (table: Cliente)
ALTER TABLE Cliente ADD CONSTRAINT Cliente_Persona
    FOREIGN KEY (rut)
    REFERENCES Persona (rut)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Conduce (table: Vehiculo)
ALTER TABLE Vehiculo ADD CONSTRAINT Conduce
    FOREIGN KEY (Chofer_ID_Chofer)
    REFERENCES Chofer (ID_Chofer)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Contiene (table: Receta)
ALTER TABLE Receta ADD CONSTRAINT Contiene
    FOREIGN KEY (Producto_Cod_producto)
    REFERENCES Producto (Cod_producto)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Empleado_Persona (table: Empleado)
ALTER TABLE Empleado ADD CONSTRAINT Empleado_Persona
    FOREIGN KEY (rut)
    REFERENCES Persona (rut)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Fabrica (table: Producto)
ALTER TABLE Producto ADD CONSTRAINT Fabrica
    FOREIGN KEY (Heladero_ID_Heladero)
    REFERENCES Heladero (ID_Heladero)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Fabrica_Abastece (table: Abastece)
ALTER TABLE Abastece ADD CONSTRAINT Fabrica_Abastece
    FOREIGN KEY (Fabrica_Cod_fabrica)
    REFERENCES Fabrica (Cod_fabrica)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Fabrica_Persona_Fabrica (table: Fabrica_Persona)
ALTER TABLE Fabrica_Persona ADD CONSTRAINT Fabrica_Persona_Fabrica
    FOREIGN KEY (Fabrica_Cod_fabrica)
    REFERENCES Fabrica (Cod_fabrica)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Fabrica_Persona_Persona (table: Fabrica_Persona)
ALTER TABLE Fabrica_Persona ADD CONSTRAINT Fabrica_Persona_Persona
    FOREIGN KEY (Persona_rut)
    REFERENCES Persona (rut)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Genera (table: Orden_compra)
ALTER TABLE Orden_compra ADD CONSTRAINT Genera
    FOREIGN KEY (Pedido_Cod_pedido)
    REFERENCES Pedido (Cod_pedido)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Heladero_Empleado (table: Heladero)
ALTER TABLE Heladero ADD CONSTRAINT Heladero_Empleado
    FOREIGN KEY (ID_empleado)
    REFERENCES Empleado (ID_empleado)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Mayorista_Cliente (table: Mayorista)
ALTER TABLE Mayorista ADD CONSTRAINT Mayorista_Cliente
    FOREIGN KEY (ID_Cliente)
    REFERENCES Cliente (ID_Cliente)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Minorista_Cliente (table: Minorista)
ALTER TABLE Minorista ADD CONSTRAINT Minorista_Cliente
    FOREIGN KEY (ID_Cliente)
    REFERENCES Cliente (ID_Cliente)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Paga (table: Orden_compra)
ALTER TABLE Orden_compra ADD CONSTRAINT Paga
    FOREIGN KEY (Persona_rut)
    REFERENCES Persona (rut)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Proveedor_Ingrediente_Ingrediente (table: Proveedor_Ingrediente)
ALTER TABLE Proveedor_Ingrediente ADD CONSTRAINT Proveedor_Ingrediente_Ingrediente
    FOREIGN KEY (Ingrediente_Cod_ingrediente)
    REFERENCES Ingrediente (Cod_ingrediente)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Proveedor_Ingrediente_Proveedor (table: Proveedor_Ingrediente)
ALTER TABLE Proveedor_Ingrediente ADD CONSTRAINT Proveedor_Ingrediente_Proveedor
    FOREIGN KEY (Proveedor_Cod_proveedor)
    REFERENCES Proveedor (Cod_proveedor)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Realiza_Vendedor (table: Pedido)
ALTER TABLE Pedido ADD CONSTRAINT Realiza_Vendedor
    FOREIGN KEY (Vendedor_ID_Vendedor)
    REFERENCES Vendedor (ID_Vendedor)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Se_compone (table: Ingrediente)
ALTER TABLE Ingrediente ADD CONSTRAINT Se_compone
    FOREIGN KEY (Receta_Cod_receta)
    REFERENCES Receta (Cod_receta)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Sucursal_Abastece (table: Abastece)
ALTER TABLE Abastece ADD CONSTRAINT Sucursal_Abastece
    FOREIGN KEY (Sucursal_Cod_sucursal)
    REFERENCES Sucursal (Cod_sucursal)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Sucursal_Persona_Persona (table: Sucursal_Persona)
ALTER TABLE Sucursal_Persona ADD CONSTRAINT Sucursal_Persona_Persona
    FOREIGN KEY (Persona_rut)
    REFERENCES Persona (rut)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Sucursal_Persona_Sucursal (table: Sucursal_Persona)
ALTER TABLE Sucursal_Persona ADD CONSTRAINT Sucursal_Persona_Sucursal
    FOREIGN KEY (Sucursal_Cod_sucursal)
    REFERENCES Sucursal (Cod_sucursal)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Trabaja_fabri (table: Persona)
ALTER TABLE Persona ADD CONSTRAINT Trabaja_fabri
    FOREIGN KEY (Fabrica_Cod_fabrica)
    REFERENCES Fabrica (Cod_fabrica)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Trabaja_sucu (table: Persona)
ALTER TABLE Persona ADD CONSTRAINT Trabaja_sucu
    FOREIGN KEY (Sucursal_Cod_sucursal)
    REFERENCES Sucursal (Cod_sucursal)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Vehiculo_Pedido_Pedido (table: Vehiculo_Pedido)
ALTER TABLE Vehiculo_Pedido ADD CONSTRAINT Vehiculo_Pedido_Pedido
    FOREIGN KEY (Pedido_Cod_pedido)
    REFERENCES Pedido (Cod_pedido)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Vehiculo_Pedido_Vehiculo (table: Vehiculo_Pedido)
ALTER TABLE Vehiculo_Pedido ADD CONSTRAINT Vehiculo_Pedido_Vehiculo
    FOREIGN KEY (Vehiculo_Patente)
    REFERENCES Vehiculo (Patente)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Vendedor_Empleado (table: Vendedor)
ALTER TABLE Vendedor ADD CONSTRAINT Vendedor_Empleado
    FOREIGN KEY (ID_empleado)
    REFERENCES Empleado (ID_empleado)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- sequences
-- Sequence: Administracion_seq
CREATE SEQUENCE Administracion_seq
      INCREMENT BY 1
      NO MINVALUE
      NO MAXVALUE
      START WITH 1
      NO CYCLE
;

-- Sequence: Chofer_seq
CREATE SEQUENCE Chofer_seq
      INCREMENT BY 1
      NO MINVALUE
      NO MAXVALUE
      START WITH 1
      NO CYCLE
;

-- Sequence: Cliente_seq
CREATE SEQUENCE Cliente_seq
      INCREMENT BY 1
      NO MINVALUE
      NO MAXVALUE
      START WITH 1
      NO CYCLE
;

-- Sequence: Empleado_seq
CREATE SEQUENCE Empleado_seq
      INCREMENT BY 1
      NO MINVALUE
      NO MAXVALUE
      START WITH 1
      NO CYCLE
;

-- Sequence: Fabrica_seq
CREATE SEQUENCE Fabrica_seq
      INCREMENT BY 1
      NO MINVALUE
      NO MAXVALUE
      START WITH 1
      NO CYCLE
;

-- Sequence: Heladero_seq
CREATE SEQUENCE Heladero_seq
      INCREMENT BY 1
      NO MINVALUE
      NO MAXVALUE
      START WITH 1
      NO CYCLE
;

-- Sequence: Ingrediente_seq
CREATE SEQUENCE Ingrediente_seq
      INCREMENT BY 1
      NO MINVALUE
      NO MAXVALUE
      START WITH 1
      NO CYCLE
;

-- Sequence: Mayorista_seq
CREATE SEQUENCE Mayorista_seq
      INCREMENT BY 1
      NO MINVALUE
      NO MAXVALUE
      START WITH 1
      NO CYCLE
;

-- Sequence: Minorista_seq
CREATE SEQUENCE Minorista_seq
      INCREMENT BY 1
      NO MINVALUE
      NO MAXVALUE
      START WITH 1
      NO CYCLE
;

-- Sequence: Orden_compra_seq
CREATE SEQUENCE Orden_compra_seq
      INCREMENT BY 1
      NO MINVALUE
      NO MAXVALUE
      START WITH 1
      NO CYCLE
;

-- Sequence: Pedido_seq
CREATE SEQUENCE Pedido_seq
      INCREMENT BY 1
      NO MINVALUE
      NO MAXVALUE
      START WITH 1
      NO CYCLE
;

-- Sequence: Persona_seq
CREATE SEQUENCE Persona_seq
      INCREMENT BY 1
      NO MINVALUE
      NO MAXVALUE
      START WITH 1
      NO CYCLE
;

-- Sequence: Producto_seq
CREATE SEQUENCE Producto_seq
      INCREMENT BY 1
      NO MINVALUE
      NO MAXVALUE
      START WITH 1
      NO CYCLE
;

-- Sequence: Proveedor_seq
CREATE SEQUENCE Proveedor_seq
      INCREMENT BY 1
      NO MINVALUE
      NO MAXVALUE
      START WITH 1
      NO CYCLE
;

-- Sequence: Receta_seq
CREATE SEQUENCE Receta_seq
      INCREMENT BY 1
      NO MINVALUE
      NO MAXVALUE
      START WITH 1
      NO CYCLE
;

-- Sequence: Sucursal_seq
CREATE SEQUENCE Sucursal_seq
      INCREMENT BY 1
      NO MINVALUE
      NO MAXVALUE
      START WITH 1
      NO CYCLE
;

-- Sequence: Vendedor_seq
CREATE SEQUENCE Vendedor_seq
      INCREMENT BY 1
      NO MINVALUE
      NO MAXVALUE
      START WITH 1
      NO CYCLE
;

-- End of file.

