cask 'vivaldi-snapshot' do
  version '1.12.955.14'
  sha256 '87c7066a8341856db023879da6b9fab125490de383884d3446cdbb192aca3b9c'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '73233d86c6733841ac1a1c8e7c81f5dc6071f4a4fc3b67d21ed84e599df35e77'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
