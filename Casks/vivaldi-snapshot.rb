cask :v1 => 'vivaldi-snapshot' do
  version '1.0.344.24'
  sha256 '772c7d5c043e24d9f84c0178b35e8b920cf03a1d1b1307ab1334fca789d6dab2'

  url "https://vivaldi.com/download/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          :sha256 => '19c7540da92d6eb6a7f7d006772a755d706ede5bfa98dffd3d25085d59a0d40f'
  name 'Vivaldi'
  homepage 'https://vivaldi.com'
  license :gratis

  app 'Vivaldi.app'
end
