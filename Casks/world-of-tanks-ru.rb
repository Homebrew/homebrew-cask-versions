cask :v1 => 'world-of-tanks-ru' do
  version :latest
  sha256 :no_check

  url 'http://redirect.wargaming.net/WoT/latest_mac_install_ru'
  name 'World Of Tanks'
  homepage 'http://worldoftanks.ru/'
  license :unknown    # todo: improve this machine-generated value

  app 'World of Tanks.app'

  zap :delete => '~/Documents/World_of_Tanks'
end
