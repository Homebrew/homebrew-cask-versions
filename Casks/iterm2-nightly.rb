cask 'iterm2-nightly' do
  version '2.9.20160514'
  sha256 '16c6323dd25183493c52fcfed562e489e7931e059c882861204c880d96eaf96b'

  url "https://iterm2.com/downloads/nightly/iTerm2-#{version.dots_to_underscores}-nightly.zip"
  appcast 'https://iterm2.com/appcasts/nightly.xml',
          checkpoint: '3e97d4751a1965592fc73d99e650e59aebd591cc3d8c8237ba8116516156bfe2'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
