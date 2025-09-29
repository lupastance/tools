# Git init script

Este repositorio está dedicado a la automaticación de crear un repositorio en tu cuenta de GitHub de manera automática.

# 💥 IMPORTANTE

Debéis tener instalado el `CLI de GitHub`. Lo podéis instalar con el comando

```bash
winget install Github.cli
```

Según la estructura de archivos y carpetas que usamos en la asignatura **Desarrollo de Interfaces**

    📂 assets
    📂 script
        🔰 script.js
    📂 style
        🔹 style.css
    📋 index.html
    📋 README.md

# Antes de usarlo

Lo mejor que podéis hacer es meter el script en una carpeta y luego configurar esa carpeta en las variables de entorno de vuestro sistema operativo para poder ejectuar el script desde cualquier parte.

Tened en cuenta que tendrás que modificar el archivo `gitinit.bat` en varias líneas del código:

- Tenéis que poner el nombre de vuestro usuario de GitHub (2 veces)
- Tenéis que establecer la ruta de vuestra carpeta donde guardéis o queráis guardar todos vuestros proyectos para que el script cree el proyecto en la carpeta que toca

### Ejemplo

```bash
git remote add origin https://github.com/TU_NOMBRE_DE_USUARIO/%1.git

START https://github.com/TU_NOMBRE_DE_USUARIO/%1
```

👇

```bash
git remote add origin https://github.com/manolito/%1.git

START https://github.com/manolito/%1
```

# ¿Cómo se usa?

Se tiene que utilizar la línea de comandos y ejecutar el script pasándole un parámetro con el nombre del repositorio:

🟥 Tened en cuenta de que no puede contener espacios en blanco ni caracteres raros

    gitinit.bat mi-proyecto-nuevo