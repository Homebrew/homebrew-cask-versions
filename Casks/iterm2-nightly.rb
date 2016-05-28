cask 'iterm2-nightly' do
  version '2.9.20160527'
  sha256 '65c81a90d28e3f41acad3b5fb32ef592fe3a05fd72fc309a540eaa21e79bdee7'

  url "https://iterm2.com/downloads/nightly/iTerm2-#{version.dots_to_underscores}-nightly.zip"
  appcast 'https://iterm2.com/appcasts/nightly.xml',
          checkpoint: '638de139bd34f647b732c1f5dbe2e6e543998d2e9b1e8f6fa8052d36e7b1c79b'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
