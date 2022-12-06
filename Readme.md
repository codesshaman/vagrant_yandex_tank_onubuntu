# Vagrant virual machine with K3d

### Requirements

Your need install [vagrant](https://github.com/hashicorp/vagrant-installers/releases/tag/v2.3.4.dev%2Bmain "vagrant") and  [virtualbox](https://www.virtualbox.org/ "virtualbox") for up this configuration. Optional you can use [make](https://www.gnu.org/software/make/ "make").

### Step 1

Download box bento/ubuntu-14.04 for virtualbox from [vagrantup](https://app.vagrantup.com/bento/boxes/ubuntu-14.04 "vagrantup").

### Step 2

Clonr this repository: git clone https://github.com/codesshaman/vagrant_yandex_tank_onubuntu.git

### Step 3

Copy box and go inside the repository folder. Rename this box to "ubuntu":

``cp ~/Downloads/5dd90cd2-fb84-4d06-9980-af4244bef970 path_to/vagrant_yandex_tank_onubuntu/ubuntu``

``cd vagrant_yandex_tank_onubuntu``

### Step 4

Install configuration:

``vagrant up --provider=virtualbox``

### Step 5

Connect:

``ssh vagrant@192.168.58.100``
