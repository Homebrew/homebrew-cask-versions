cask 'iterm2-nightly' do
  version '2.9.20160209'
  sha256 '562c068bf0fecb9a38858f05f2e26a66a48646da73c407445384c045211cfedc'

  url "https://iterm2.com/downloads/nightly/iTerm2-#{version.dots_to_underscores}-nightly.zip"
  appcast 'https://iterm2.com/appcasts/nightly.xml',
          checkpoint: 'e9f538912d271586c1ae03039c361eca68b7ef80427fa092bfaed17f751c39c8'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
