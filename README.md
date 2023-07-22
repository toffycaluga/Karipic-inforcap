# KariPic - Plataforma de Fotografía por Karina

KariPic es una plataforma de fotografía desarrollada para la fotógrafa reconocida mundialmente, Karina. Esta aplicación permite a los usuarios ver y comentar las fotografías que Karina ha tomado, creando una experiencia más profesional y personalizada que las redes sociales convencionales.
![img](https://github.com/toffycaluga/Karipic-inforcap/blob/main/app/assets/images/r1.png)
![img](https://github.com/toffycaluga/Karipic-inforcap/blob/main/app/assets/images/r2.png)

## Características

- Registro de usuarios con nombre, email y contraseña.
- Cada usuario debe proporcionar una foto de perfil al registrarse.
- Karina puede subir sus fotografías con una leyenda que describe los sentimientos y/o situaciones retratadas.
- Los usuarios pueden comentar las fotografías, y los comentarios se muestran con la foto de perfil de quien ha comentado.
- Integración con Amazon S3 para almacenar las imágenes de los usuarios y las fotografías de Karina de manera segura y escalable.
- Despliegue en Heroku para acceso público y funcionalidad en línea.

## Tecnologías Utilizadas

- Ruby 3.1.1
- Rails 7.0.4
- PostgreSQL (base de datos)
- Devise (para autenticación de usuarios)
- Figaro (para almacenar de forma segura las credenciales de Amazon S3)
- Amazon S3 (para almacenar imágenes)
- Heroku (para el despliegue en línea)

## Configuración del Proyecto

1.  Clona el repositorio:

        git clone https://github.com/toffycaluga/Karipic-inforcap.git
        cd Karipic-inforcap

2.  Instala las gemas necesarias

        bundle install

3.  Configura las variables de entorno :

Crea un archivo `config/application.yml` usando el archivo `config/application.yml.sample` como plantilla. Completa las credenciales de Amazon S3 y otras configuraciones según tus necesidades.

4.  Configura la base de datos:

        rails db:create
        rails db:migrate

5.  Agrega a la usuaria karina (Admin)

        rails db:seed

6.  Inicia el servidor

        rails s

Accede a la aplicación en tu navegador web: http://localhost:3000.
Contribuciones

## Paso a paso para subir a heroku

1. Crea una cuenta o inicia sesión en Heroku en https://www.heroku.com/.

2. Una vez que hayas iniciado sesión, en el Dashboard de Heroku, haz clic en el botón "New" (Nuevo) y selecciona "Create new app" (Crear nueva app).

3. En la página "Create new app", ingresa un nombre para tu aplicación y selecciona la región más adecuada.

4. Luego, en la pestaña "Deploy" (Desplegar) de la página de tu aplicación, en la sección "Deployment method" (Método de despliegue), elige la opción "GitHub" (también puedes elegir Git si has subido el código a GitHub previamente).

5. Conecta tu cuenta de GitHub a Heroku y busca el repositorio del proyecto en la lista.

6. Después de conectar el repositorio, puedes elegir entre desplegar la rama principal automáticamente o desplegar manualmente eligiendo la rama.

7. Una vez que hayas configurado el despliegue, ve a la pestaña "Settings" (Configuraciones) y haz clic en "Reveal Config Vars" (Mostrar variables de configuración).

8. Agrega todas las variables de entorno necesarias para tu aplicación. Asegúrate de configurar la clave secreta de Rails y cualquier otra variable que necesites.

9. Ahora, en la pestaña "Resources" (Recursos), asegúrate de que esté habilitado el servicio de base de datos PostgreSQL para tu aplicación. Si no lo está, agrégalo seleccionando "Heroku Postgres" en la sección "Add-ons".

10. Una vez que hayas configurado todo, haz clic en el botón "Deploy Branch" (Desplegar rama) en la pestaña "Deploy" para iniciar el despliegue de tu aplicación.

11. Heroku comenzará a desplegar la aplicación y podrás ver el progreso en los registros (logs). Si todo va bien, la aplicación debería estar disponible en la URL de Heroku.

⌨️ con ❤️ por [Toffy Caluga](https://github.com/toffycaluga)
