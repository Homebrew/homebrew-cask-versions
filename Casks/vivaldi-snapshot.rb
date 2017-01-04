cask 'vivaldi-snapshot' do
  version '1.7.715.3'
  sha256 'a9a8c480de817d6d2d9d64d31c993a9f6e7940ab42d6328e4f6045d3d756f626'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '2443494f5fc9c11d086ad125e88305f1439ed74c33bed3e808ad9174a787e4ba'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
