class PycharmEap < Cask
  version '139.113'
  sha256 '2df8db23f5da041e6c30c787c6cf4fc2864f197d639aba05785fc49009750c67'

  url "http://download.jetbrains.com/python/pycharm-professional-#{version}.dmg"
  homepage 'http://confluence.jetbrains.com/display/PYH/JetBrains+PyCharm+Preview+(EAP)'
  license :unknown

  app 'PyCharm 4.0 EAP.app'
end
