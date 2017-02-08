# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/xenial64"

  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.network "forwarded_port", guest: 3000, host: 3000
  config.vm.network "forwarded_port", guest: 5432, host: 54322

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "2048"
  end

  config.vm.provision "shell", inline: <<-SHELL
    sudo apt-get update

    sudo apt-get install -y postgresql-server-dev-9.5 postgis postgresql-9.5-postgis-2.2
    sudo apt-get install -y libgeos-dev libproj-dev nodejs

    sudo -u postgres psql --command 'create extension postgis;'
    sudo -u postgres psql --command "create user railsapp with superuser password 'railsapp';"
    sudo -u postgres createdb -O railsapp uahmaps-dev
    sudo -u postgres createdb -O railsapp uahmaps-testing
    sudo -u postgres createdb -O railsapp uahmaps-prod

    echo "host all  all    0.0.0.0/0  md5" | sudo tee -a /etc/postgresql/9.5/main/pg_hba.conf
    echo "listen_addresses='*'" | sudo tee -a /etc/postgresql/9.5/main/postgresql.conf

    sudo service postgresql restart

    gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
    curl -sSL https://get.rvm.io | bash -s stable

    source /etc/profile.d/rvm.sh
    rvm use --default --install ruby-2.4.0-rc1

    cd /vagrant
    gem install bundler
    bundle install

    rake db:setup

  SHELL
end
