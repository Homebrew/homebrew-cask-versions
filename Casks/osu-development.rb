cask 'osu-development' do
  version '2020.413.0'
  sha256 'a5698b0cf2e57f1029626dc66d3ef832dce2a86ca77490c6f0198e27837e55d2'

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
