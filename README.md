# uahmaps

Primera práctica de Modelos Avanzados de Bases de Datos

## Instalación

Esta práctica usa Vagrant para contener el entorno, con VirtualBox como backend.
Si quieres cambiar el proveedor de hipervisor puedes en Vagrantfile, acuerdate de 
poner el límite de 2GB de RAM, ya que el por defecto de 512MB suele hacer crashear a Ruby on Rails.

Asumiendo VirtualBox y ansible instalado y un bash ejecuta:

    vagrant up --provision
    
Esto instalará todo el Stack necesario para ejecutar el sistema en modo desarrollo.

El fichero Ansible es pre 1.9, porque tener software a la última versión es para "autistas que quieren un sistema inestable" (joder, a veces odio Debian).

## Ejecución

Entra dentro de la MV con

    vagrant ssh
    
y una vez dentro

    cd /vagrant
    rails s
    
Y conectate con un navegador a localhost:3000

