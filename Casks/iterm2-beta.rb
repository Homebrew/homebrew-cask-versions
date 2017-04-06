cask 'iterm2-beta' do
  version '3.1.beta.3'
  sha256 'f8a49c5160c9a48d1d1f5f4eb12092cb09181bcc327ef70655a65251ce0d253e'

  url "https://iterm2.com/downloads/beta/iTerm2-#{version.dots_to_underscores}.zip"
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'

  auto_updates true
  depends_on macos: '>= 10.10'

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
