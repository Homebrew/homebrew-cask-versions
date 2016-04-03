cask 'clementine-rc' do
  version '1.3.0rc1'
  sha256 'dd578a53c7fd47c89ade55eae224b5390590a32de982479ecf73e738d6620249'

  # github.com/clementine-player/Clementine was verified as official when first introduced to the cask
  url "https://github.com/clementine-player/Clementine/releases/download/#{version.gsub('.0', '')}/clementine-#{version}.dmg"
  appcast 'https://github.com/clementine-player/Clementine/releases.atom',
          checkpoint: '460ea33daaedccd5c58ce4cda1ace8c86827ba3533dac9a5d0ca0df5e1e1f875'
  name 'Clementine'
  homepage 'https://www.clementine-player.org/'
  license :gpl

  conflicts_with cask: 'caskroom/cask/clementine'

  app 'Clementine.app'

  zap delete: [
                '~/Library/Application Support/Clementine',
                '~/Library/Caches/org.clementine-player.Clementine',
                '~/Library/Preferences/org.clementine-player.Clementine.plist',
                '~/Library/Saved Application State/org.clementine-player.Clementine.savedState',
              ]
end
