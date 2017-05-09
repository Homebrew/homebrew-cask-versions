cask 'iterm2-nightly' do
  version :latest
  sha256 :no_check

  url 'https://www.iterm2.com/nightly/latest'
  appcast 'https://iterm2.com/appcasts/nightly.xml',
          checkpoint: '6bff955a041286a2564081923aee7da96064dede5d4a285cf09f5bf85481a6b0'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'

  app 'iTerm.app'

  zap delete: [
                '~/Library/Preferences/com.googlecode.iterm2.plist',
                '~/Library/Caches/com.googlecode.iterm2',
                '~/Library/Application Support/iTerm',
                '~/Library/Application Support/iTerm2',
              ]
end
