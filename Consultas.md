# Proyecto Parqueadero UPK 

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




