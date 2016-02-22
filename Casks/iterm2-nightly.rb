cask 'iterm2-nightly' do
  version '2.9.20160222'
  sha256 'da5ad34d8c8e78aa752519c74660af17716523aab8b0050a21fabe360fb487ed'

  url "https://iterm2.com/downloads/nightly/iTerm2-#{version.dots_to_underscores}-nightly.zip"
  appcast 'https://iterm2.com/appcasts/nightly.xml',
          checkpoint: 'a7d65979fd8d16edac9730436dd629cb60877aff31099c5b6ec34a7d4f4c2180'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
