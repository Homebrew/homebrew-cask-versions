cask 'iterm2-nightly' do
  version '2.9.20160129'
  sha256 '28001b8048dcb80ab575c573b0f46acab7e9cb2aaa0bf6f32ad0af8defcb1424'

  url "https://iterm2.com/downloads/nightly/iTerm2-#{version.dots_to_underscores}-nightly.zip"
  appcast 'https://iterm2.com/appcasts/nightly.xml',
          checkpoint: '96d8f3953488b032de3a566e39555c48c5debfdffd747c78121ca99274164104'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
