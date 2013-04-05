<<<<<<< HEAD
### Netspective Puppet Script for Server Side Installations and Configurations

This puppet script different modules that needed for various server side installations and configurations. Configured each installation/configuration as separate modules.
=======
### Netspective Puppet Script for Server build checklist option.

This puppet script different modules that needed for various checklist options. Configured each checklist as seprate modules.
>>>>>>> d9d636d13af4a7d1c8c4e403504a707855c54713

**Server Configuration Management Setup**

Install Git and Puppet

`sudo apt-get install -y git-core puppet`

`cd $HOME`

Clone the puppet script:

<<<<<<< HEAD
`sudo git clone http://gitlab.rcs.cm.netspective.com/netspective-puppet-script-server-checklists.git`

`sudo cp -Rv  /modules/* /etc/puppet/modules/`

`sudo cp netspective-puppet-script-for-installations/manifests/nodes.pp /etc/puppet/manifests/`
=======
`sudo git clone http://rcs.cm.netspective.com/netspective-puppet-script-server-checklists.git`

`sudo cp -Rv netspective-puppet-script-server-checklists/modules/* /etc/puppet/modules/`

`sudo cp netspective-puppet-script-server-checklists/manifests/nodes.pp /etc/puppet/manifests/`
>>>>>>> d9d636d13af4a7d1c8c4e403504a707855c54713

Edit /etc/puppet/manifests/nodes.pp to include the needed modules.

`sudo puppet apply /etc/puppet/manifests/nodes.pp`

`sudo reboot`