cask :v1 => 'vivaldi-snapshot' do
  version '1.0.219.51'
  sha256 '2178e6d814e7feea3d1b58033135511061a4559d79884c7ca47ccb1bf36daf07'

  url "https://vivaldi.com/download/snapshot/Vivaldi.#{version}.dmg"
  name 'Vivaldi'
  homepage 'https://vivaldi.com'
  license :gratis

  app 'Vivaldi.app'
end
