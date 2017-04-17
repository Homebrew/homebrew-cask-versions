cask 'clementine-rc' do
  version '1.3.0,rc1'
  sha256 'dd578a53c7fd47c89ade55eae224b5390590a32de982479ecf73e738d6620249'

  # github.com/clementine-player/Clementine was verified as official when first introduced to the cask
  url "https://github.com/clementine-player/Clementine/releases/download/#{version.major_minor}#{version.after_comma}/clementine-#{version.major_minor_patch}#{version.after_comma}.dmg"
  appcast 'https://github.com/clementine-player/Clementine/releases.atom',
          checkpoint: 'f2e34fdf3d07c9437f30a4119e66d57f6b4dc72c3782e695330a55ab1b865356'
  name 'Clementine'
  homepage 'https://www.clementine-player.org/'

  conflicts_with cask: 'caskroom/cask/clementine'

  app 'Clementine.app'

  zap delete: [
                '~/Library/Application Support/Clementine',
                '~/Library/Caches/org.clementine-player.Clementine',
                '~/Library/Preferences/org.clementine-player.Clementine.plist',
                '~/Library/Saved Application State/org.clementine-player.Clementine.savedState',
              ]
end
