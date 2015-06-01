cask :v1 => 'vivaldi-snapshot' do
  version '1.0.190.2'
  sha256 'ec0c8e79d566a815626f208d09e88102e78932a4c857eb293328415d7ecc02e9'

  url "https://vivaldi.com/download/download.php?f=Vivaldi.#{version}.dmg"
  name 'Vivaldi'
  homepage 'https://vivaldi.com'
  license :gratis

  app 'Vivaldi.app'
end
