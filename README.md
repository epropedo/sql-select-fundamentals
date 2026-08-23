# TechStore — Consultas Básicas SELECT

Este repositorio contiene las consultas SQL realizadas para la práctica de fundamentos de SELECT y alias.

## ¿Por qué es mala práctica usar SELECT * en producción?

SELECT * permite seleccionar todas las columnas de una tabla. Puede ser útil durante la exploración inicial de los datos, pero no se recomienda utilizarlo habitualmente en ambientes de producción.

Algunas razones son:

### 1. Rendimiento

SELECT * puede traer columnas que no necesitamos. Si una tabla tiene muchas columnas o contiene grandes cantidades de datos, esto puede aumentar el volumen de información transferida y afectar el rendimiento.

Por ejemplo, si solamente necesitamos:

sql
SELECT customer_id, total_amount
FROM sales;

no es necesario traer las otras columnas de la tabla

### 2. Mantenibilidad
Las tablas pueden cambiar con el tiempo. Si se agregan nuevas columnas, una consulta que utiliza SELECT * comenzará a devolverlas automáticamente, aunque no las necesitemos

### 3. Seguridad

Especificar las columnas permite evitar traer información que determinados usuarios no necesitan consultar.

Por estas razones, SELECT * puede ser útil para explorar datos, pero en consultas de producción es preferible seleccionar solamente las columnas necesarias
