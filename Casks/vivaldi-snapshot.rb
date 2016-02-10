cask 'vivaldi-snapshot' do
  version '1.0.390.3'
  sha256 'e0cfd56db0a244ed0f859321dfaf89de2fe860c5d7ffea414cb1872bca2ea808'

  url "https://vivaldi.com/download/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '7518e33a8a8a79a5a037dcb4ccf29b9df7be5530ae4141d56c5373a9a5c617f0'
  name 'Vivaldi'
  homepage 'https://vivaldi.com'
  license :gratis

  app 'Vivaldi.app'
end
