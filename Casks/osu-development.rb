cask 'osu-development' do
  version '2019.330.0'
  sha256 'bf16103b5a357db283f07358ea3775ca8cd91f22c64df30bd0be22bdc9ef776f'

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
