cask 'vivaldi-snapshot' do
  version '1.9.818.40'
  sha256 '9e6996de5b04bdba28425d96a1bdcec98b06546581f510ea16d9e00cd8e1c093'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '78116cbf375a7d675267284143fb90d460e3b7ec9edf00062a74254c68814ebf'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
