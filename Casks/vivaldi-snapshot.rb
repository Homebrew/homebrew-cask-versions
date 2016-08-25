cask 'vivaldi-snapshot' do
  version '1.3.551.37'
  sha256 '76b919ed5b9b003dab5d334943a19679b10e51cc0823b9f27f9c7b317e67b456'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: 'eec6b4b6bef1d9fc1114d5876adf2233dc8c2c3e70396c31364aa5f9f328fa81'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'
  license :gratis

  app 'Vivaldi.app'
end
