. sagent
sshagent_init
PUB=$(ssh-keygen -l -f ~/.ssh/id_ed25519.pub)
if [[ ! "$(ssh-add -l | grep $PUB)" ]] ; then
  ssh-add ~/.ssh/id_ed25519
fi
unset PUB
