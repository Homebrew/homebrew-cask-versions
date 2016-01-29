cask 'pycharm-ce' do
  version '5.0.4'
  sha256 '64128ad1e76375ec625fc27d2c270527ef4959978bb6a60f87ad54044075682e'

  url "https://download.jetbrains.com/python/pycharm-community-#{version}-jdk-bundled.dmg"
  name 'Jetbrains PyCharm Community Edition'
  name 'PyCharm CE'
  homepage 'https://www.jetbrains.com/pycharm'
  license :apache

  app 'PyCharm CE.app'

  caveats do
    depends_on_java
  end
end
