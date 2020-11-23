if [ -f /var/log/install_puppet.done ]
then
  echo "Puppet already installed"
else
  #
  # Apt-get update
  #
  # TODO: make it not dependent on focal release
  wget https://apt.puppetlabs.com/puppet6-release-focal.deb
  dpkg -i puppet6-release-focal.deb
  apt-get update
  #
  # Install correct puppet version
  #
  if [ -f "/vagrant/puppet_version" ]; then
    PACKAGE="puppet-agent-$(cat /vagrant/puppet_version)"
  else
    PACKAGE="puppet-agent"
  fi
  echo "Installing $PACKAGE"
  apt-get -y install $PACKAGE
  apt-get -y install git

  touch /var/log/install_puppet.done
fi
