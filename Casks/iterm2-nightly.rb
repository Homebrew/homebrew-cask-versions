cask 'iterm2-nightly' do
  version :latest
  sha256 :no_check

  url 'https://www.iterm2.com/nightly/latest'
  appcast 'https://iterm2.com/appcasts/nightly.xml',
          checkpoint: '083908c06413f4aa9b12aa9945049401bf56e48e8755849c6a20d6b3288382f1'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  app 'iTerm.app'

  zap delete: [
    '~/Library/Preferences/com.googlecode.iterm2.plist',
    '~/Library/Caches/com.googlecode.iterm2',
    '~/Library/Application Support/iTerm',
    '~/Library/Application Support/iTerm2'
  ]
end
