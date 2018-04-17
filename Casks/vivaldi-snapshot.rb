cask 'vivaldi-snapshot' do
  version '1.15.1147.23'
  sha256 '39bcbe25d65c02f010b63be8ca040718af6302f613a2ceed49325014185adab8'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: 'f8950e57aa72a1062600703a823abfa85495af920e0837c830a7a324d983cfb1'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
