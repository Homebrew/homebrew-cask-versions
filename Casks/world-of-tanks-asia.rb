cask 'world-of-tanks-asia' do
  version :latest
  sha256 :no_check

  # wargaming.net was verified as official when first introduced to the cask
  url 'http://redirect.wargaming.net/WoT/latest_mac_install_asia'
  name 'World Of Tanks'
  homepage 'http://worldoftanks.asia/'

  app 'World of Tanks.app'

  zap delete: '~/Documents/World_of_Tanks'
end
