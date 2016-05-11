cask 'pycharm-ce' do
  version '2016.1.3'
  sha256 '3da97fd5b103d602fafd433549d43a6a6503ce9cfeb6be34da8ffe26a6eb0267'

  url "https://download.jetbrains.com/python/pycharm-community-#{version}.dmg"
  name 'Jetbrains PyCharm Community Edition'
  name 'PyCharm CE'
  homepage 'https://www.jetbrains.com/pycharm'
  license :apache

  app 'PyCharm CE.app'
end
