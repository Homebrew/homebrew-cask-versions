cask :v1 => 'vivaldi-snapshot' do
  version '1.0.209.3'
  sha256 'b3791bc885c347e1bbb470263dab64bf5b87db1b26f1565e851ac9202d4ab4dd'

  url "https://vivaldi.com/download/download.php?f=Vivaldi.#{version}.dmg"
  name 'Vivaldi'
  homepage 'https://vivaldi.com'
  license :gratis

  app 'Vivaldi.app'
end
