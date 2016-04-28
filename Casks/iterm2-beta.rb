cask 'iterm2-beta' do
  version '2.9.20160426'
  sha256 '439800354dad6fd1c209e8b066ef8cfb683f81f8c1de40b839853fa31f93c1da'

  url "https://iterm2.com/downloads/beta/iTerm2-#{version.dots_to_underscores}.zip"
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  auto_updates true

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
