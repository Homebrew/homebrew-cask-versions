cask 'osu-development' do
  version '2019.910.0'
  sha256 '112e5bf0a9585bc60a20ea93ed48a67a1317fb027867233ef573542e50c89c9b'

  url "https://github.com/ppy/osu/releases/download/#{version}/osu.app.zip"
  appcast 'https://github.com/ppy/osu/releases.atom'
  name 'osu!lazer'
  homepage 'https://github.com/ppy/osu/'

  auto_updates true
  conflicts_with cask: 'osu'
  depends_on macos: '>= :sierra'

  app 'osu!.app'

  zap trash: [
               '~/.local/share/osu',
               '~/Library/Saved Application State/sh.ppy.osu.lazer.savedState',
             ]
end
