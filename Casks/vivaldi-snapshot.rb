cask :v1 => 'vivaldi-snapshot' do
  version '1.0.231.3'
  sha256 'c90e95c3fc7b679e164f182a954756218b847dc41bcf34ee2f43025b3c801921'

  url "https://vivaldi.com/download/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          :sha256 => '7271745733a6bea247569e1d4dea118fb69ed341b66371fcb88f71ca7fbf3385'
  name 'Vivaldi'
  homepage 'https://vivaldi.com'
  license :gratis

  app 'Vivaldi.app'
end
