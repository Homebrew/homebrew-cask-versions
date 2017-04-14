cask 'iterm2-nightly' do
  version '3.1.20170412'
  sha256 'c18c4c10978341807665e13fe0c2c338512f7816015088f41213c4ad65354500'

  url "https://iterm2.com/downloads/nightly/iTerm2-#{version.dots_to_underscores}-nightly.zip"
  appcast 'https://iterm2.com/appcasts/nightly.xml',
          checkpoint: 'f1a1724de1a582e823ea78cc89570ad87830af56d1651fc3da52da7f38e03ac6'
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
