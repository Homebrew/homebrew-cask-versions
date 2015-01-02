cask :v1 => 'world-of-tanks-asia' do
  version :latest
  sha256 :no_check

  # wargaming.net is the official download host per the vendor homepage
  url 'http://redirect.wargaming.net/WoT/latest_mac_install_asia'
  name 'World Of Tanks'
  homepage 'http://worldoftanks.asia/'
  license :gratis

  app 'World of Tanks.app'

  zap :delete => '~/Documents/World_of_Tanks'
end
