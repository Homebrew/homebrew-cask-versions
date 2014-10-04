class PycharmCeEap < Cask
  version '138.2401'
  sha256 '996e160b6f2f345eee0b75efdc053842f265ccf3f15ca1c1cb6515bec75e8b8a'

  url "http://download.jetbrains.com/python/pycharm-community-#{version}.dmg"
  homepage 'http://confluence.jetbrains.com/display/PYH/JetBrains+PyCharm+Preview+(EAP)'
  license :unknown

  app 'PyCharm CE 4.0 EAP.app'
end
