cask 'vivaldi-snapshot' do
  version '2.8.1664.32'
  sha256 '276f07902ed1ab0ed465fd1d5d850e90bd489238a8fcc9c9edfdb37ef98b408a'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  auto_updates true

  app 'Vivaldi.app'
end
