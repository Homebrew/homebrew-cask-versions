cask :v1 => 'vivaldi-snapshot' do
  version '1.0.288.3'
  sha256 '19e800738b99959030baf01bd6244082e986a6fbf18560bc801736ee7a2c5ff0'

  url "https://vivaldi.com/download/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          :sha256 => '5cd052c9cc8f7938f46fd8972aeabe26ade824ce84bad276567073b1f7da604b'
  name 'Vivaldi'
  homepage 'https://vivaldi.com'
  license :gratis

  app 'Vivaldi.app'
end
