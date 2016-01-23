cask 'vivaldi-snapshot' do
  version '1.0.377.10'
  sha256 '466201ddcea244a9fcb0cf8d45e297d3214fb33f8d5032923432b72653116fb5'

  url "https://vivaldi.com/download/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '1d350f1f6fd8ff4e9796e47716a2b193bef4fdbea209a37fa0bbe135067e634b'
  name 'Vivaldi'
  homepage 'https://vivaldi.com'
  license :gratis

  app 'Vivaldi.app'
end
