cask 'vivaldi-snapshot' do
  version '1.13.1008.3'
  sha256 '625dce71ab5cd8c73def15d0dc13881ef19d21c4b8e88e0e7147e16dc9621732'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: 'd3910cc751c236618a11884c07523c739c29fea6cc110b3a4e46ca5bb35c8225'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
