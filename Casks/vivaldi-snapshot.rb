cask 'vivaldi-snapshot' do
  version '1.12.933.3'
  sha256 '2c283652b1bf78ba7e1e1a8d14cdcea0142ce8914cbbcb41d0906983df0b5f47'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '1584d5b3bcb35d8017ae2818db6959a3ce93a415bbdb24a075f59c0f85640ac3'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
