cask 'osu' do
  version '2019.308.0'
  sha256 '15d1e456081643758a76d7a3651fc4a3868b2defd17aed7b69602543b7dafad7'

  url "https://github.com/ppy/osu/releases/download/#{version}/osu.app.zip"
  appcast 'https://github.com/ppy/osu/releases.atom'
  name 'osu!lazer'
  homepage 'https://github.com/ppy/osu/'

  auto_updates true
  conflicts_with cask: 'osu'

  app 'osu!.app'

  zap trash: [
               '~/.local/share/osu',
               '~/Library/Saved Application State/sh.ppy.osu.lazer.savedState',
             ]
end
