cask 'pycharm-edu' do
  version '2.0.4'
  sha256 'fc4682b4c31f2437e0d8634c1fb091e6276b0c6385225b66c514bf033588af80'

  url "https://download.jetbrains.com/python/pycharm-edu-#{version}.dmg"
  name 'Jetbrains PyCharm Educational Edition'
  name 'PyCharm Edu'
  homepage 'https://www.jetbrains.com/pycharm-edu/'
  license :apache

  app 'PyCharm Edu.app'
end
