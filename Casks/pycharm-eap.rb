cask :v1 => 'pycharm-eap' do
  version '141.1075'
  sha256 'ec9c79b709142364b5315dd0d98fc9b9a9ee0d2c15fe9745e1e4fceb35620578'

  url "http://download.jetbrains.com/python/pycharm-professional-#{version}.dmg"
  homepage 'http://confluence.jetbrains.com/display/PYH/JetBrains+PyCharm+Preview+(EAP)'
  license :unknown

  app 'PyCharm 4.5 EAP.app'
end
