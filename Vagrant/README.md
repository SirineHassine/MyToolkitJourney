
Typing vagrant from the command line will display a list of all available commands.

Be sure that you are in the same directory as the Vagrantfile when running these commands!

## Creating a VM
- _vagrant init_ -- Initialize Vagrant with a Vagrantfile and ./.vagrant directory, using no specified base image. Before you can do vagrant up, you'll need to specify a base image in the Vagrantfile.

- _vagrant init <boxpath>_ -- Initialize Vagrant with a specific box. To find a box, go to the public Vagrant box catalog. When you find one you like, just replace it's name with boxpath. For example, vagrant init ubuntu/trusty64.

## Starting a VM
- _vagrant up_ -- starts vagrant environment (also provisions only on the FIRST vagrant up)
- _vagrant resume_ -- resume a suspended machine (vagrant up works just fine for this as well)
- _vagrant provision_ -- forces reprovisioning of the vagrant machine
- _vagrant reload_ -- restarts vagrant machine, loads new Vagrantfile configuration
- _vagrant reload_ --provision -- restart the virtual machine and force provisioning
## Getting into a VM
- _vagrant ssh_ -- connects to machine via SSH
- _vagrant ssh <boxname>_ -- If you give your box a name in your Vagrantfile, you can ssh into it with boxname. Works from any directory.
## Stopping a VM
- _vagrant halt_ -- stops the vagrant machine
- _vagrant suspend_ -- suspends a virtual machine (remembers state)
## Cleaning Up a VM
- _vagrant destroy_ -- stops and deletes all traces of the vagrant machine
- _vagrant destroy -f_ -- same as above, without confirmation
Boxes
- _vagrant box list_ -- see a list of all installed boxes on your computer
- _vagrant box add <name> <url>_ -- download a box image to your computer
- _vagrant box outdated_ -- check for updates vagrant box update
- _vagrant box remove <name>_ -- deletes a box from the machine
- _vagrant package_ -- packages a running virtualbox env in a reusable box

## Saving Progress
- vagrant snapshot save [options] [vm-name] <name> -- vm-name is often default. Allows us to save so that we can rollback at a later time

## Tips
- vagrant -v -- get the vagrant version
- vagrant status -- outputs status of the vagrant machine
- vagrant global-status -- outputs status of all vagrant machines
- vagrant global-status --prune -- same as above, but prunes invalid entries
- vagrant provision --debug -- use the debug flag to increase the verbosity of the output
- vagrant push -- yes, vagrant can be configured to deploy code!
- vagrant up --provision | tee provision.log -- Runs vagrant up, forces provisioning and logs all output to a file
