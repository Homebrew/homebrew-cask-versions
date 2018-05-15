cask 'vivaldi-snapshot' do
  version '1.16.1183.3'
  sha256 'abaf060a32f113f91049b96f62f006ea56aa6187691ffb575a198cbc9c4f386a'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: 'd9e623543f51db85b336ba0d73146dcce5a21e744ac1211820351f47a3a434ee'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
