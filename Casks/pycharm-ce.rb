cask 'pycharm-ce' do
  version '2016.1.2'
  sha256 'e68b9fa401500311bcc3cbbcbd6b3ab02849dcac3bdb6864389aec17c6c7e992'

  url "https://download.jetbrains.com/python/pycharm-community-#{version}.dmg"
  name 'Jetbrains PyCharm Community Edition'
  name 'PyCharm CE'
  homepage 'https://www.jetbrains.com/pycharm'
  license :apache

  app 'PyCharm CE.app'
end
