cask :v1 => 'pycharm-eap' do
  version '139.1525'
  sha256 '9ee396a9971001c7912930fe0c054e3154127f7c09f8be77a71d42180887c8b9'

  url "http://download.jetbrains.com/python/pycharm-professional-#{version}.dmg"
  homepage 'http://confluence.jetbrains.com/display/PYH/JetBrains+PyCharm+Preview+(EAP)'
  license :unknown

  app 'PyCharm 4.0.5 EAP.app'
end
