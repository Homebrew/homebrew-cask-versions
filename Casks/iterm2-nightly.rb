cask 'iterm2-nightly' do
  version '2.9.20160419'
  sha256 '4d7f6070b80afb2316dbbee65470c4eb329b2c607786efac100abf245c54ef30'

  url "https://iterm2.com/downloads/nightly/iTerm2-#{version.dots_to_underscores}-nightly.zip"
  appcast 'https://iterm2.com/appcasts/nightly.xml',
          checkpoint: '4ff0a64c5069dbdae4f807b8fb73a4003af1b3d9d4ee740322c917811d05b929'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
