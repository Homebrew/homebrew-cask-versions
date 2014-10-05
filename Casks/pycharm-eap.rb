class PycharmEap < Cask
  version '138.2401'
  sha256 '801378fffeee50f0933a309a1187f94f0bd49a3f9fc861c8144c78b57d224f38'

  url "http://download.jetbrains.com/python/pycharm-professional-#{version}.dmg"
  homepage 'http://confluence.jetbrains.com/display/PYH/JetBrains+PyCharm+Preview+(EAP)'
  license :unknown

  app 'PyCharm 4.0 EAP.app'
end
