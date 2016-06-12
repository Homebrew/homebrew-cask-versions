cask 'iterm2-beta' do
  version '3.0.1'
  sha256 '3c1ebd790986b3230c7f382b2bcd897280f32c074d09fd4ec3afbf853f320f5e'

  url "https://iterm2.com/downloads/beta/iTerm2-#{version.dots_to_underscores}-preview.zip"
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  auto_updates true
  depends_on macos: '>= 10.8'

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
