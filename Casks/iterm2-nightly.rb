cask 'iterm2-nightly' do
  version '2.9.20160423'
  sha256 '38fcc1f8affa95ae8cfed7d091c9f59be8e33fcda61ec47d2b4434ed46b27caf'

  url "https://iterm2.com/downloads/nightly/iTerm2-#{version.dots_to_underscores}-nightly.zip"
  appcast 'https://iterm2.com/appcasts/nightly.xml',
          checkpoint: '30f71c16f9bba01eaf808cf85dd0116f45d420acc41a42a18d68867a217057de'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
