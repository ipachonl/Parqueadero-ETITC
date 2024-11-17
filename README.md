# Parqueadero - UPK

## Introduccion

El proyecto de "Parqueadero UPK" surge como una solución integral a los problemas de gestión, seguridad y eficiencia en el control de acceso de los parqueaderos de la Universidad Pública de Kennedy. Actualmente, el sistema manual de registro genera congestión, largas filas, y vulnerabilidades en la seguridad, afectando tanto a usuarios como al personal de seguridad. Ante estas deficiencias, se propone el desarrollo de un sistema automatizado que emplea bases de datos, generación de códigos QR y aplicaciones móviles/web, con el objetivo de optimizar el control de acceso vehicular, mejorar la seguridad y reducir los tiempos de espera. Esta modernización no solo ofrecerá una mejor experiencia para los usuarios, sino que también permitirá una gestión más eficiente y basada en datos, facilitando la toma de decisiones a nivel administrativo y aumentando la seguridad de los vehículos en el campus

## Planteamiento del Problema
**En este proyecto tenemos 3 problemáticas:**

1. El trafico y tiempo de espera al momento de la entrada y salida del parqueadero.
2. La seguridad en la salida del parqueadero (En ocasiones no piden documentacion del vehiculo que va saliendo, para saber si es de su propiedad o no)
3. Los registros son manuales en hojas, portafolios y cuadernos (Minutas), etc.



## Justificación

El presente proyecto busca abordar de manera integral las problemáticas actuales asociadas al sistema de control de acceso en los parqueaderos de la Universidad Pública de Kennedy. La gestión manual de los registros, basada en hojas y cuadernos, genera una serie de inconvenientes que impactan negativamente en la eficiencia operativa, la seguridad y la experiencia de los usuarios.

**Problematica actual:**

* Ineficiencia: Los registros manuales generan largas filas de espera, retrasos en el acceso y una baja eficiencia en la gestión de los espacios disponibles.
* Inseguridad: La falta de un sistema de control automatizado expone los vehículos a posibles robos o daños, y dificulta la identificación de responsables en caso de incidentes.
* Falta de datos: La ausencia de un sistema de registro digital impide la generación de reportes detallados y el análisis de patrones de uso, lo cual limita la toma de decisiones informadas.
* Vulnerabilidad a errores: Los registros manuales son propensos a errores humanos, lo que puede generar confusiones y conflictos.
   
 **Requerimientos de la solución:**

### **1. Base de datos:** 

•	Diseño de una base de datos relacional para almacenar información de usuarios, vehículos y registros de entrada/salida.

•	Capacidad para manejar un alto volumen de transacciones concurrentes.

•	Mecanismos de backup y recuperación de datos.

![image](https://github.com/user-attachments/assets/da932b91-e45f-492b-b55f-cbce977afd53)

### **2. Sistema de generación y gestión de códigos QR:**

•	Generación de códigos QR únicos para cada vehículo registrado.

•	Vinculación de códigos QR con información del usuario y vehículo en la base de datos.

•	Sistema de renovación y revocación de códigos QR.

### Ejemplo de boceto de los codigos QR:

![Imagen de WhatsApp 2024-10-18 a las 20 33 56_a6186169](https://github.com/user-attachments/assets/a3832201-6909-4df2-a7a3-d5659881e96b)

### **3. Aplicación móvil/web para escaneo:** 

•	Compatibilidad con dispositivos iOS y Android.

•	Interfaz intuitiva para escanear códigos QR rápidamente.

•	Sincronización en tiempo real con la base de datos central.

### **4. Interfaz de usuario para guardas de seguridad:**

•	Panel de control para visualizar entradas y salidas recientes.

•	Capacidad para registrar manualmente vehículos en caso de fallo del sistema QR.

•	Alertas visuales y sonoras para situaciones irregulares (ej. vehículo no autorizado).

### **5. Sistema de reportes y análisis:** 

•	Generación de informes diarios, semanales y mensuales de uso del parqueadero.

•	Análisis de patrones de uso y ocupación.

•	Exportación de datos en formatos comunes (CSV, PDF, Excel).

### **6. Gestión de usuarios y permisos:** 

•	Sistema de registro para nuevos usuarios (estudiantes, profesores, personal).

•	Diferentes niveles de acceso (administrador, guarda, usuario regular).

•	Proceso de aprobación para nuevos registros de vehículos.

### **7. Notificaciones y comunicaciones:** 

•	Sistema de notificaciones push para informar a los usuarios sobre el estado del parqueadero.

•	Alertas automáticas cuando el parqueadero esté cerca de su capacidad máxima.

### **8. Seguridad y privacidad:** 

•	Encriptación de datos sensibles en la base de datos.

•	Cumplimiento con regulaciones de protección de datos personales.

•	Registro de auditoría para todas las transacciones y accesos al sistema.

### **9. Escalabilidad y rendimiento:** 

•	Arquitectura que permita escalar el sistema a medida que crezca la demanda.

•	Optimización para manejar picos de tráfico durante horas punta.

### **10. Interfaz de administración:** 

•	Panel de control para gestionar usuarios, vehículos y permisos.

•	Herramientas para configurar parámetros del sistema (ej. capacidad del parqueadero, horarios de operación).

### **11. Monitoreo y mantenimiento:** 

•	Herramientas de monitoreo en tiempo real del estado del sistema.

•	Logs detallados para facilitar el diagnóstico y resolución de problemas.

## **Beneficios Esperados:**

* Optimización de recursos: La automatización de los procesos reducirá los costos operativos y permitirá una mejor utilización de los espacios disponibles.
*  Mayor seguridad: La implementación de un sistema de control de acceso más seguro reducirá el riesgo de robos y otros incidentes.
*  Mejora de la imagen institucional: La adopción de tecnologías innovadoras posicionará a la universidad como una institución moderna y eficiente.
*  Facilidad de gestión: El sistema proporcionará a los administradores herramientas para gestionar de manera eficiente los parqueaderos y tomar decisiones basadas en datos.
*  Mayor satisfacción del usuario: La reducción de los tiempos de espera y la mejora en la seguridad aumentarán la satisfacción de los usuarios.

## Objetivo principal

Desarrollar e implementar un sistema de gestión de parqueadero basado en bases de datos y generacion de códigos QR para la Universidad Pública de Kennedy, con el fin de optimizar el control de acceso, reducir los tiempos de espera, mejorar la seguridad y la eficiencia operativa.

### Objetivos Especificos

•	Integrar el sistema de control de acceso a los parqueaderos universitarios basado en tecnología QR con la aplicación móvil institucional, permitiendo a los usuarios utilizar su carnet virtual como llave de acceso a los parqueaderos

•	Describir los componentes principales del programa propuesto, incluyendo la base de datos y la generación de códigos QR, así como la aplicación o página web para el escaneo de estos códigos.

•  Diseñar y crear una base de datos relacional para almacenar información de usuarios, vehículos y registros de entrada/salida.

•	Aumentar la eficiencia del registro de vehículos, eliminando errores humanos y facilitando la generación de reportes detallados sobre la ocupación de los parqueaderos, lo cual permitirá una mejor planificación y gestión de los espacios disponibles.

•	Realizar pruebas de rendimiento y seguridad del sistema para garantizar su fiabilidad y eficacia. 

•	Capacitar al personal de seguridad y administrativo en el uso del nuevo sistema de gestión de parqueadero. 

•	Evaluar el impacto del nuevo sistema en los tiempos de espera y la satisfacción de los usuarios del parqueadero mediante encuestas y análisis de datos.   

## Normalización de los datos del parqueadero de la universadad

Tener en cuenta que los datos que tenemos en esta Normalización son de un solo dia de registro y de un unico registro para cada usuario.

#### 1. En la primera hoja de el excel tenemos los datos en crudo:

![image](https://github.com/user-attachments/assets/51f89ffb-3567-4ef8-b7e6-d7d6c329b8d0)

#### 2. En la segunda hoja de el excel Organizamos un poco los datos:

![image](https://github.com/user-attachments/assets/a89a15ba-5645-45ba-b6e9-f87235407d29)

#### 3. En la tercera hoja de el excel hicimos la reduccion de datos que no servian y dejamos solo los importantes  y tambien aplicamos la primera forma normal:

![image](https://github.com/user-attachments/assets/14f3b13c-8717-464e-b1e2-907d85fa50a6)

#### 4. En la cuarta hoja de el excel aplicamos la segunda forma normal:

![image](https://github.com/user-attachments/assets/a87a75ab-402b-4a83-aaab-6300c8f4ec92)

#### 5. En la quinta hoja de el excel aplicamos la tercera forma normal:

![image](https://github.com/user-attachments/assets/4b3fa4bf-456c-46b0-b3c9-332ae89d1aa2)

#### 6. En la sexta hoja de el excel ya tenemos las tablas que vamos a subir al workbench:

![image](https://github.com/user-attachments/assets/ba356f1c-9afe-4b21-b49e-cdadb388db46)


