# G4-dev vagrant box (debian 10.3 | latest)

This project contains the Packer build configurations for g4-dev virtualbox dev environments.
 
  - [loic-roux-404/deb-g4](https://app.vagrantup.com/loic-roux-404/boxes/deb-g4)

All of these boxes are available as public, free Vagrant boxes and can be used with the command:

    vagrant init loic-roux-404/deb-g4

You can also fork this repository and customize a build configuration with your own Ansible roles and playbooks to build a fully custom Vagrant box using Packer.

## Requirements

The following software must be installed/present on your local machine before you can use Packer to build any of these Vagrant boxes:

  - [Packer](http://www.packer.io/)
  - [Vagrant](http://vagrantup.com/)
  - [VirtualBox](https://www.virtualbox.org/)
  - [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)

## Usage

- Make sure all the required software
- create a `.token` file and put your user token to push image on vagrant cloud
- then run :

        make build

After a few minutes, Packer should tell you the box was generated successfully, and the box was uploaded to Vagrant Cloud.

## Testing built boxes

There's an included Vagrantfile that allows quick testing of the built Vagrant boxes. From the same box directory, run the following command after building the box:

    $ vagrant up

Test that the box works correctly, then tear it down with:

    $ vagrant destroy -f

## Credits

[Jeff Geerling](https://www.jeffgeerling.com)

# garbbage

      //"guest_additions_path": "VBoxGuestAdditions_{{.Version}}.iso",
