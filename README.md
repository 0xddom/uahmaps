# uahmaps
Primera práctica de Modelos Avanzados de Bases de Datos

## Sobre la originalidad

Si a alguien se le ocurre usar esta práctica y entregarla como suya, causando por ello en perjuicio a mi persona, movere cielo y tierra para que a dicha persona se la abra un parte disciplinario.

## Instalación

Esta práctica usa Vagrant para contener el entorno, con VirtualBox como backend.
Si quieres cambiar el proveedor de hipervisor puedes en Vagrantfile, acuerdate de 
poner el límite de 2GB de RAM, ya que el por defecto de 512MB hace crashear a Ruby on Rails.

Asumiendo Virtual Box instalado y un bash ejecuta:

    vagrant up
    
Esto instalará todo el Stack necesario para ejecutar el sistema en modo desarrollo.

## Ejecución

Entra dentro de la MV con

    vagrant ssh
    
y una vez dentro

    cd /vagrant
    rails s
    
Y conectate con un navegador a localhost:3000

