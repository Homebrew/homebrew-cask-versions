cask :v1 => 'vivaldi-snapshot' do
  version '1.0.167.2'
  sha256 'ded8ebb78e7f49bfdc56ed4444782dc90ec0d51965c672076f5c8e5109515608'

  url "https://vivaldi.com/download/download.php?f=Vivaldi.#{version}.dmg"
  name 'Vivaldi'
  homepage 'https://vivaldi.com'
  license :gratis

  app 'Vivaldi.app'
end
