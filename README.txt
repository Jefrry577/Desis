Versiones:
PgAdmin:V6.20
PHP: V8.2.0
Postgre: V15.2
XAMPP: V3.3.0

Instalación de aplicaciones necesarias

Se requieren las siguientes aplicaciones para el funcionamiento del proyecto

-XAMPP: para que actúe de servidor de la aplicación web
-PgAdmin: para poder gestionar la base de datos. 
-(opcional) Visual Studio Code o cualquier editor de texto de preferencia.

1) A continuación se deberá de colocar la carpeta del proyecto en la dirección "C:\xampp\htdocs".
2) en la carpeta SQL estará el archivo de la base de datos de Postgre que se deberá de importar en PgAdmin
2.1) en PgAdmin se creará una nueva base de datos, una vez creada se data clic derecho y se presionara “Restore”
     saldrá una ventana donde deberá de colocar la ruta donde se ubica el archivo, en caso de que no lo vea 
     asegúrese de que en el campo de “format” este "custom ot tar" para que aparezca el archivo.
3)una vez instalado XAMPP se deberá hacer clic en el botón "Config" e ir a la opción "PHP (php.ini)" en el Módulo de Apache y buscar las extensiones siguientes:
     ;extension=pdo_pgsql
     ;extension=pdo_sqlite
     ;extension=pgsql
     A estas se les debe de borrar el punto y coma (;) inicial para poder trabajar con Postgre.
