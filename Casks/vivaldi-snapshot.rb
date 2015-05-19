cask :v1 => 'vivaldi-snapshot' do
  version '1.0.178.2'
  sha256 '975689112f958e0086deb5ff9831613a0be51f99fe2360ad7043a7533357b559'

  url "https://vivaldi.com/download/download.php?f=Vivaldi.#{version}.dmg"
  name 'Vivaldi'
  homepage 'https://vivaldi.com'
  license :gratis

  app 'Vivaldi.app'
end
