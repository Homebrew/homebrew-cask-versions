cask 'clementine-rc' do
  version '1.3.0rc1'
  sha256 'dd578a53c7fd47c89ade55eae224b5390590a32de982479ecf73e738d6620249'

  # github.com/clementine-player/Clementine was verified as official when first introduced to the cask
  url "https://github.com/clementine-player/Clementine/releases/download/#{version.gsub(%r{.0}, '')}/clementine-#{version}.dmg"
  appcast 'https://github.com/clementine-player/Clementine/releases.atom',
          checkpoint: '460ea33daaedccd5c58ce4cda1ace8c86827ba3533dac9a5d0ca0df5e1e1f875'
  name 'Clementine'
  homepage 'https://www.clementine-player.org/'
  license :gpl

  app 'Clementine.app'

  zap delete: '~/Library/Preferences/org.clementine-player.Clementine.plist'
end
