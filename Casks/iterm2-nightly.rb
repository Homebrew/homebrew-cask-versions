cask 'iterm2-nightly' do
  version :latest
  sha256 :no_check

  url 'https://www.iterm2.com/nightly/latest'
  appcast 'https://iterm2.com/appcasts/nightly.xml',
          checkpoint: '6cf0d7368f02b12bb025ac9561ec82955adc664d1aa850b9e07e852ff70f4825'
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
