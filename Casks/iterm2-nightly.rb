cask 'iterm2-nightly' do
  version '2.9.20160310'
  sha256 'eef44f856354c87a71b0f1c4dacf4981d5f2cc556d9f29ea833e72d16f46ffc8'

  url "https://iterm2.com/downloads/nightly/iTerm2-#{version.dots_to_underscores}-nightly.zip"
  appcast 'https://iterm2.com/appcasts/nightly.xml',
          checkpoint: 'e6fd20f5ed954f70e071b2ef3d45673ab27d21eda97cdb4b91c4fc9aa71a60ef'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
