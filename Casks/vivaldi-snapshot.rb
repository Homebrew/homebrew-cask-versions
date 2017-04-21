cask 'vivaldi-snapshot' do
  version '1.9.818.22'
  sha256 '23a302d2bc9d2677636ee7f62c9cb7152faed8e2b047c8159260487fc5f70bf3'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: 'bb86e4c5d77ff33183befeea4fc158ecb4f33026f41207b69eddb2b51740df14'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
