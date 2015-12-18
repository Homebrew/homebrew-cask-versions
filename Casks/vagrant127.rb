cask 'vagrant127' do
  version '1.2.7'
  sha256 '75c720eda0cbe6b2a2b19e38757ba4c34fbc57095ab4cc1459609bd242418129'

  url "http://files.vagrantup.com/packages/7ec0ee1d00a916f80b109a298bab08e391945243/Vagrant-#{version}.dmg"
  name 'Vagrant'
  homepage 'https://www.vagrantup.com'
  license :mit

  pkg 'Vagrant.pkg'
  uninstall :script => { :executable => 'uninstall.tool', :input => %w[Yes] }
end
