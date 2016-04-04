cask 'vivaldi-snapshot' do
  version '1.0.435.29'
  sha256 '4ee5d4de5ec3952d57585db5169ff678c6a293cadf19a4c7a917300c1d1703ae'

  url "https://vivaldi.com/download/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: 'c34a78e1ad1912f19ade0e142f0d9bf821ec1ce359f2e6d5fc8f6649851c2094'
  name 'Vivaldi'
  homepage 'https://vivaldi.com'
  license :gratis

  app 'Vivaldi.app'
end
