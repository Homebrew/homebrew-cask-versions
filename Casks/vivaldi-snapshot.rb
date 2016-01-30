cask 'vivaldi-snapshot' do
  version '1.0.380.2'
  sha256 '9b3cdac0ddd45bb262c9e0390ad541f86bfa1e3327784db1ebc4e06034012d32'

  url "https://vivaldi.com/download/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '1d1d38ce477c28b361c017514e73ebcd671d0fe8bd0611409271a65ea9ebc4be'
  name 'Vivaldi'
  homepage 'https://vivaldi.com'
  license :gratis

  app 'Vivaldi.app'
end
