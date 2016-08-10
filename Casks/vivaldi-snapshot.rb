cask 'vivaldi-snapshot' do
  version '1.3.551.28'
  sha256 '7892c135210b7fb246d75d7825e6a3c8a63076a9afb971e6903007c606906b8f'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '0453ef97754fe377e800eb9ca93c920c52a7b2e364cd1733f51dba75e06091c0'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'
  license :gratis

  app 'Vivaldi.app'
end
