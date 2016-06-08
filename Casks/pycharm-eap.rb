cask 'pycharm-eap' do
  version '162.646.12'
  sha256 '52dec6f316b3d672537af337a32c7572802583a78100dad0d556b9f1dee0f88c'

  url "https://download.jetbrains.com/python/pycharm-professional-#{version}.dmg"
  name 'PyCharm EAP'
  homepage 'https://confluence.jetbrains.com/display/PYH/JetBrains+PyCharm+Preview+(EAP)'
  license :commercial

  conflicts_with cask: 'pycharm'

  app 'PyCharm 2016.2 EAP.app'

  uninstall delete: '/usr/local/bin/charm'

  zap delete: [
                '~/Library/Preferences/PyCharm2016.2',
                '~/Library/Application Support/PyCharm2016.2',
                '~/Library/Caches/PyCharm2016.2',
                '~/Library/Logs/PyCharm2016.2',
              ]
end
