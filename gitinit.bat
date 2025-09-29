@REM Desactivamos la salida del echo 
@echo OFF

@REM Establecemos la codificiación del texto en UTF-8 para los acentos
chcp 65001 >nul

@REM Creamos el repositorio en GitHub
@REM IMPORTANTE !! tener instalado el CLI de GitHub
@REM Lo puedes instalar con el comando "winget install Github.cli"
gh repo create %1 --private

@REM Creamos la estructura de directorios y archivos
mkdir %1
cd %1
mkdir assets
mkdir style
mkdir script

cd style
type nul > style.css
cd ..

cd script
type nul > script.js
cd ..

type nul > index.html

(
echo # %1
echo.
echo %~2
) > README.md

@REM Inicializamos git en la carpeta nueva que acabamos de crear

git init
git add .
git commit -m "Git Init BASH mode"
git branch -M main

@REM Aquí tienes que poner tu nombre de usuario de github
git remote add origin https://github.com/TU_NOMBRE_DE_USUARIO/%1.git
git push -u origin main

@REM Aquí tienes que poner tu nombre de usuario de github
@REM Abrimos el prepositorio desde la web de Github
START https://github.com/TU_NOMBRE_DE_USUARIO/%1

cd ..