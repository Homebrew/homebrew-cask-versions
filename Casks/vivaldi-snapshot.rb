cask 'vivaldi-snapshot' do
  version '1.8.770.25'
  sha256 'bbab9b560535ee87d04d1cce6c3b41d317273a06599d7ee4699e279dee478637'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '1708982095625c02822e501b8963747031c0657a53b9afe80e4f73f2dcfb1e4c'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
