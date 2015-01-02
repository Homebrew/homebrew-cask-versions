cask :v1 => 'world-of-tanks-ru' do
  version :latest
  sha256 :no_check

  # wargaming.net is the official download host per the vendor homepage
  url 'http://redirect.wargaming.net/WoT/latest_mac_install_ru'
  name 'World Of Tanks'
  homepage 'http://worldoftanks.ru/'
  license :gratis

  app 'World of Tanks.app'

  zap :delete => '~/Documents/World_of_Tanks'
end
