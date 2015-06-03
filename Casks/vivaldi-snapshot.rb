cask :v1 => 'vivaldi-snapshot' do
  version '1.0.190.2'
  sha256 'e82ae34e6960b47cf21ba271b2e0002e409cda1695c8efb6037b30e517abae69'

  url "https://vivaldi.com/download/download.php?f=Vivaldi.#{version}.dmg"
  name 'Vivaldi'
  homepage 'https://vivaldi.com'
  license :gratis

  app 'Vivaldi.app'
end
