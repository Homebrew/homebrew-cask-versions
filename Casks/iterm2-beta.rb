cask 'iterm2-beta' do
  version '3.0.2'
  sha256 'b3c6c6ee0e9d30a525102a169a4e4fcb20e0fc12ab4af4e57ef5cfe8c4dc9ef4'

  url "https://iterm2.com/downloads/beta/iTerm2-#{version.dots_to_underscores}-preview.zip"
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  auto_updates true
  depends_on macos: '>= 10.8'

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
