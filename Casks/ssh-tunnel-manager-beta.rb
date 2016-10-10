cask 'ssh-tunnel-manager-beta' do
  version :latest
  sha256 :no_check

  # dl.devmate.com/org.tynsoe.sshtunnelmanager was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/org.tynsoe.sshtunnelmanager/beta/SSHTunnelManager.zip'
  name 'SSH Tunnel Manager'
  homepage 'https://www.tynsoe.org/v2/stm/'

  app 'SSH Tunnel Manager.app'
end
