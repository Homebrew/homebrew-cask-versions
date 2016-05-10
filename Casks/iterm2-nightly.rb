cask 'iterm2-nightly' do
  version '2.9.20160510'
  sha256 '002b9076e08ae9c4697b6b049898e68479d7563ff8f7ee3833ed7588363ed016'

  url "https://iterm2.com/downloads/nightly/iTerm2-#{version.dots_to_underscores}-nightly.zip"
  appcast 'https://iterm2.com/appcasts/nightly.xml',
          checkpoint: '5356a706674151f323800c9e2b50f561badda5aa744774abe761a3c8c0a59b27'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
