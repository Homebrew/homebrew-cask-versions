cask :v1 => 'vivaldi-snapshot' do
  version '1.0.209.3'
  sha256 '07067b11414f7dffff6fb03deb832fdd23bef64cfc67c27911f2c131842d8641'

  url "https://vivaldi.com/download/snapshot/Vivaldi.#{version}.dmg"
  name 'Vivaldi'
  homepage 'https://vivaldi.com'
  license :gratis

  app 'Vivaldi.app'
end
