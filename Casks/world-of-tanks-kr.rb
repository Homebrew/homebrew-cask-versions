cask :v1 => 'world-of-tanks-kr' do
  version :latest
  sha256 :no_check

  url 'http://redirect.wargaming.net/WoT/latest_mac_install_kr'
  name 'World Of Tanks'
  homepage 'http://worldoftanks.kr/'
  license :unknown    # todo: improve this machine-generated value

  app 'World of Tanks.app'

  zap :delete => '~/Documents/World_of_Tanks'
end
