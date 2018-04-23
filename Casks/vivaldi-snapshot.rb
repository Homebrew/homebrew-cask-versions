cask 'vivaldi-snapshot' do
  version '1.15.1147.32'
  sha256 'a0a0ab249b8dc39929aceef0f0ed9638bd12e1f641c666e8e903e95b086a1c53'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '27a16c8554adb47059f907cc6dbe956f01363ba984f0df953d708f83e5fe83d2'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
