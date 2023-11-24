# 1-install_a_package.pp

# Install flask using pip3 with a specific version
package { 'flask':
  ensure   => '2.1.0',
  provider => 'pip3',
}
