cask 'vivaldi-snapshot' do
  version '1.11.917.17'
  sha256 '7e305339454b9c24b7f138ca1ff7de8eb8e47defd1474dc9c5a3bc6e957cb8eb'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '696a3a30a60dea26dd48e751d5d9222006af3357ac3f13371347dd9857e813c6'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
