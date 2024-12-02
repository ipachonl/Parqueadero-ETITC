![consulta simple1](https://github.com/user-attachments/assets/201d5495-98e5-4944-9c4e-611a98f95d0a)# Proyecto Parqueadero UPK 

## Consultas MYSQL

### Consultas sencillas

**1. Consulta los colores de los vehículos disponibles.**

**SQL equivalente**:

```sql
SELECT Color FROM colores;
```

![image](https://github.com/user-attachments/assets/314c20f4-9e66-4615-ac3f-07dd3cfd5584)

**2. Obtener los datos personales de los estudiantes**

**SQL equivalente**:

```sql
SELECT * FROM datospersonales WHERE ID_Rol_Usuario = 3;
```

![image](https://github.com/user-attachments/assets/584f66a5-e8a8-425b-8fa9-a76a7da1b2f5)

**3. Consulta las universidades en el sistema**

**SQL equivalente**:

```sql
SELECT Universidad FROM tablauniversidades;
```

![image](https://github.com/user-attachments/assets/3664ba60-f91b-4d9e-9874-626b7172e9f2)


**4. Consulta todos los vehiculos registrados con su marca y modelo.**

**SQL equivalente**:

```sql
SELECT Id_Vehiculo, Marca, Modelo, Placa FROM datosvehiculo;
```

![image](https://github.com/user-attachments/assets/b4c8a19d-2bf3-4716-bd66-56d7522ce54c)

**5. Muestra las entradas y salidas de vehiculos con tiempo de estadia**

**SQL equivalente**:

```sql
SELECT Id_registros, Hora_Entrada, Hora_Salida, Tiempo_Estadia FROM registroingresoysalida;
```

![image](https://github.com/user-attachments/assets/bb11ef3e-082b-4851-b00f-de02f6a04fca)

### Consultas de nivel medio.

**6. Mostrar el registro de entrada y salida en una fecha especifica.**

**SQL equivalente**:

```sql
SELECT Id_registros, Fecha_Ingreso, Hora_Entrada, Hora_Salida FROM registroingresoysalida
WHERE Fecha_Ingreso = '2024-09-13';
```

![image](https://github.com/user-attachments/assets/6875b1b0-e884-421a-a82b-6c21092e0ee5)

**7. Consulta los registros de entrada y salida con una esatdia mayor a 3 horas**

**SQL equivalente**:

```sql
SELECT Id_registros, Tiempo_Estadia FROM registroingresoysalida WHERE Tiempo_Estadia > 3;  
```

![image](https://github.com/user-attachments/assets/b87a9755-38da-42ee-b076-ee2fa79bc015)

**8. Filtrar los vehiculos de color negro.**

**SQL equivalente**:

```sql
SELECT datosvehiculo.Id_Vehiculo, Marca, Modelo, Color FROM datosvehiculo
JOIN colores ON datosvehiculo.Id_Color = colores.Id_Color
WHERE colores.Color = 'Negro';
```

![image](https://github.com/user-attachments/assets/9e597b2c-8c9c-4903-8f45-027a0ecf57e3)

**9. Encontrar los vehiculos tipo Motocicleta con su dueño.**

**SQL equivalente**:

```sql
SELECT 
    datospersonales.Nombre, 
    datospersonales.Apellido, 
    datosvehiculo.Placa, 
    datosvehiculo.Marca
FROM 
    datospersonales
JOIN 
    datosvehiculo ON datospersonales.Id_registro = datosvehiculo.Id_Vehiculo
JOIN 
    tablavehiculos ON datospersonales.ID_TipoVehiculo = tablavehiculos.ID_TipoVehiculo
WHERE 
    tablavehiculos.Tipo_Vehiculo = 'Motocicleta';
```

![image](https://github.com/user-attachments/assets/b01f66b9-7425-4968-9b18-c0d3e3773246)

**10. Consulta los estudiantes pertenecientes a Ingenieria.**

**SQL equivalente**:

```sql
SELECT datospersonales.Nombre, datospersonales.Apellido, tablafacultades.Facultad
FROM datospersonales
JOIN tablafacultades ON datospersonales.ID_Facultad = tablafacultades.id_Facultad
WHERE tablafacultades.Facultad = 'Ingeniería';
```

![image](https://github.com/user-attachments/assets/bfcd3eb7-a28e-4161-a384-d2518e17763a)

### Consultas sencillas 2

**1. Contar cuántas personas están registradas en una facultad específica (id_facultad = 15) "historia".**

**SQL equivalente**:

```sql
SELECT COUNT(*) AS total_personas FROM datospersonales WHERE id_facultad = 15;
```
![consulta simple1](https://github.com/user-attachments/assets/e646de5f-9059-40c5-9a70-a8b36c8ccbb2)

**2.Listar los registros de las personas que ingresaron después de las 9:00 a.m.**

**SQL equivalente**:
```sql
SELECT cedula_persona, hora_entrada FROM registroingresoysalida WHERE hora_entrada > '09:00';
```
![consulta simple2](https://github.com/user-attachments/assets/f17b6020-6441-4030-a156-f3a7971cfec8)

**3.Contar cuántas personas hay en la base de datos**

**SQL equivalente**:
```sql
SELECT COUNT(*) AS TotalPersonas FROM datospersonales;
```
![consulta simple3](https://github.com/user-attachments/assets/53795919-1099-46ee-ab47-1f48ada7e3ca)

**4.Personas cuyo apellido contiene ez.**

**SQL equivalente**:
```sql
SELECT * FROM datospersonales WHERE Apellido LIKE '%ez%';
```
![consulta simple4](https://github.com/user-attachments/assets/ab817068-317e-4bbb-9d54-82b3703d48c5)

**5.Personas con el rol 2 o de la universidad 2.**

**SQL equivalente**:
```sql
SELECT * FROM datospersonales WHERE  ID_Rol_Usuario = 2 OR ID_Universidad = 2;
```
![consulta simple5](https://github.com/user-attachments/assets/e86eb791-fe76-42a2-848a-e18806fe2809)


## Consultas de nivel medio

**6. cuantas personas se encuentran registradas en la facultad de arquitectura.**

**SQL equivalente**:
```sql
SELECT COUNT(dp.cedula) AS total_registrados
FROM datospersonales dp
JOIN tablafacultades tf ON dp.id_facultad = tf.id_facultad
WHERE tf.nombre_facultad = 'arquitectura';
```
![consulta media1](https://github.com/user-attachments/assets/4b5dc9a1-084f-49c9-aff5-5ac2a15ea77e)

**7.Mostrar el nombre de la universidad y el número de registros en cada universidad.**

**SQL equivalente**:
```sql
SELECT tu.nombre_universidad, COUNT(dp.cedula) AS total_registrados
FROM datospersonales dp
JOIN tablauniversidades tu ON dp.id_universidad = tu.id_universidad
GROUP BY tu.nombre_universidad;
```
![consulta media2](https://github.com/user-attachments/assets/e13c44c7-29b7-48b5-acac-8f29337463e5)

**8.Obtener el tiempo total de estadía por cada usuario en todas sus visitas.**

**SQL equivalente**:
```sql
SELECT dp.nombre, dp.apellido, SUM(r.tiempo_estadia) AS tiempo_total
FROM registroingresoysalida r
JOIN datospersonales dp ON r.cedula_persona = dp.cedula
GROUP BY dp.cedula, dp.nombre, dp.apellido;
```
![consulta media3](https://github.com/user-attachments/assets/9aefd38e-ebdf-4b8d-bfae-1896056f9223)

**9.Listar las facultades que tienen más de 10 registros en el estacionamiento.**

**SQL equivalente**:
```sql
SELECT tf.nombre_facultad, COUNT(dp.cedula) AS total_registrados
FROM datospersonales dp
JOIN tablafacultades tf ON dp.id_facultad = tf.id_facultad
GROUP BY tf.nombre_facultad
HAVING total_registrados > 10;
```
![consulta media4](https://github.com/user-attachments/assets/d6e5aead-d247-4572-beff-713f7164ea21)

**10.Obtener las facultades con el mayor tiempo total de estadía acumulado por sus usuarios.**

**SQL equivalente**:
```sql
SELECT tf.nombre_facultad, SUM(r.tiempo_estadia) AS tiempo_total
FROM registroingresoysalida r
JOIN datospersonales dp ON r.cedula_persona = dp.cedula
JOIN tablafacultades tf ON dp.id_facultad = tf.id_facultad
GROUP BY tf.nombre_facultad
ORDER BY tiempo_total DESC;
```
![consulta media5](https://github.com/user-attachments/assets/41b4e1e2-ec27-4f7e-8136-f15f2df64cab)


