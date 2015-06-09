cask :v1 => 'vivaldi-snapshot' do
  version '1.0.196.2'
  sha256 '7f8c6d39b490c6212d5aae88a02ff9c067239896dfab244f9c3e89a515371b9f'

  url "https://vivaldi.com/download/download.php?f=Vivaldi.#{version}.dmg"
  name 'Vivaldi'
  homepage 'https://vivaldi.com'
  license :gratis

  app 'Vivaldi.app'
end
