# Parqueadero - UPK

## Planteamiento del Problema
**En este proyecto tenemos 3 problemáticas:**

1. El trafico y tiempo de espera al momento de la entrada y salida del parqueadero.
2. La seguridad en la salida del parqueadero (En ocasiones no piden documentacion del vehiculo que va saliendo, para saber si es de su propiedad o no)
3. Los registros son manuales en hojas, portafolios y cuadernos (Minutas), etc.
   
 **Requerimientos de la solución:**

**Base de datos:** 

•	Diseño de una base de datos relacional para almacenar información de usuarios, vehículos y registros de entrada/salida.

•	Capacidad para manejar un alto volumen de transacciones concurrentes.

•	Mecanismos de backup y recuperación de datos.

**Sistema de generación y gestión de códigos QR:**

•	Generación de códigos QR únicos para cada vehículo registrado.

•	Vinculación de códigos QR con información del usuario y vehículo en la base de datos.

•	Sistema de renovación y revocación de códigos QR.

**Aplicación móvil/web para escaneo:** 

•	Compatibilidad con dispositivos iOS y Android.

•	Interfaz intuitiva para escanear códigos QR rápidamente.

•	Sincronización en tiempo real con la base de datos central.

•	Interfaz de usuario para guardas de seguridad: 

•	Panel de control para visualizar entradas y salidas recientes.

•	Capacidad para registrar manualmente vehículos en caso de fallo del sistema QR.

•	Alertas visuales y sonoras para situaciones irregulares (ej. vehículo no autorizado).

**Sistema de reportes y análisis:** 

•	Generación de informes diarios, semanales y mensuales de uso del parqueadero.

•	Análisis de patrones de uso y ocupación.

•	Exportación de datos en formatos comunes (CSV, PDF, Excel).

**Gestión de usuarios y permisos:** 

•	Sistema de registro para nuevos usuarios (estudiantes, profesores, personal).

•	Diferentes niveles de acceso (administrador, guarda, usuario regular).

•	Proceso de aprobación para nuevos registros de vehículos.

**Notificaciones y comunicaciones:** 

•	Sistema de notificaciones push para informar a los usuarios sobre el estado del parqueadero.

•	Alertas automáticas cuando el parqueadero esté cerca de su capacidad máxima.

**Seguridad y privacidad:** 

•	Encriptación de datos sensibles en la base de datos.

•	Cumplimiento con regulaciones de protección de datos personales.

•	Registro de auditoría para todas las transacciones y accesos al sistema.

**Escalabilidad y rendimiento:** 


•	Arquitectura que permita escalar el sistema a medida que crezca la demanda.

•	Optimización para manejar picos de tráfico durante horas punta.

**Interfaz de administración:** 

•	Panel de control para gestionar usuarios, vehículos y permisos.

•	Herramientas para configurar parámetros del sistema (ej. capacidad del parqueadero, horarios de operación).

**Monitoreo y mantenimiento:** 

•	Herramientas de monitoreo en tiempo real del estado del sistema.

•	Logs detallados para facilitar el diagnóstico y resolución de problemas.

## Objetivo principal

Desarrollar e implementar un sistema de gestión de parqueadero basado en bases de datos y generacion de códigos QR para la Universidad Pública de Kennedy, con el fin de optimizar el control de acceso, reducir los tiempos de espera, mejorar segurida y la eficiencia operativa.

### Objetivos Especificos

•	Integrar el sistema de control de acceso a los parqueaderos universitarios basado en tecnología QR con la aplicación móvil institucional, permitiendo a los usuarios utilizar su carnet virtual como llave de acceso a los parqueaderos

•	Describir los componentes principales del programa propuesto, incluyendo la base de datos y la generación de códigos QR, así como la aplicación o página web para el escaneo de estos códigos.

•  Diseñar y crear una base de datos relacional para almacenar información de usuarios, vehículos y registros de entrada/salida.

•	Aumentar la eficiencia del registro de vehículos, eliminando errores humanos y facilitando la generación de reportes detallados sobre la ocupación de los parqueaderos, lo cual permitirá una mejor planificación y gestión de los espacios disponibles.

•	Realizar pruebas de rendimiento y seguridad del sistema para garantizar su fiabilidad y eficacia. 

•	Capacitar al personal de seguridad y administrativo en el uso del nuevo sistema de gestión de parqueadero. 

•	Evaluar el impacto del nuevo sistema en los tiempos de espera y la satisfacción de los usuarios del parqueadero mediante encuestas y análisis de datos.

