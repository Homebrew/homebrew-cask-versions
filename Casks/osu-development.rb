cask 'osu-development' do
  version '2020.403.0'
  sha256 '650c444269a617418c35a06c5fa002b78e45023f9b243ab6f94930da7c488770'

  url "https://github.com/ppy/osu/releases/download/#{version}/osu.app.zip"
  appcast 'https://github.com/ppy/osu/releases.atom'
  name 'osu!lazer'
  homepage 'https://github.com/ppy/osu/'

  conflicts_with cask: 'osu'
  depends_on macos: '>= :sierra'

  app 'osu!.app'

  zap trash: [
               '~/.local/share/osu',
               '~/Library/Saved Application State/sh.ppy.osu.lazer.savedState',
             ]
end
