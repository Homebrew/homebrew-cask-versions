cask 'pycharm-ce' do
  version '2016.1'
  sha256 'fc9f27d0d83940623173dec8843c80c95eccfe9cead95a585ba0964f62681bd5'

  url "https://download.jetbrains.com/python/pycharm-community-#{version}.dmg"
  name 'Jetbrains PyCharm Community Edition'
  name 'PyCharm CE'
  homepage 'https://www.jetbrains.com/pycharm'
  license :apache

  app 'PyCharm CE.app'
end
