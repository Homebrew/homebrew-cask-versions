cask 'appcode-eap' do
  version '2016.1-RC2'
  sha256 'dec7447da549f6c2033e6bea8587413888e881f0019a436a711ed07fc42c2b58'

  url "https://download.jetbrains.com/objc/AppCode-#{version}.dmg"
  name 'AppCode'
  homepage 'https://confluence.jetbrains.com/display/OBJC/AppCode+EAP'
  license :commercial

  conflicts_with cask: 'appcode'

  app 'AppCode.app'

  zap delete: [
                '~/Library/Preferences/AppCode2016.1',
                '~/Library/Application Support/AppCode2016.1',
                '~/Library/Caches/AppCode2016.1',
                '~/Library/Logs/AppCode2016.1',
              ]
end
