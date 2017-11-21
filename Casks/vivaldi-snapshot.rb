cask 'vivaldi-snapshot' do
  version '1.13.1008.30'
  sha256 'd50d33dac33a75daed59cc2f1bb3004c56dd580f000601923ad67538abe84373'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '4b592e0fbb0b97dc3022c13d09149c79a664ee57f4cd84264849157f5fa888ac'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
