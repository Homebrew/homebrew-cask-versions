cask 'iterm2-nightly' do
  version '2.9.20160417'
  sha256 'bc979c5354028044d63f0fa6f4a38b161f9a68f0c3fee2053c5285f843388fef'

  url "https://iterm2.com/downloads/nightly/iTerm2-#{version.dots_to_underscores}-nightly.zip"
  appcast 'https://iterm2.com/appcasts/nightly.xml',
          checkpoint: '50506eee53a21f6527105ed44579b3dbf4e5775a436aa6bfaee6b96a78c66898'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
