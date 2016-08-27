cask 'vivaldi-snapshot' do
  version '1.3.582.3'
  sha256 '2102bef7464c70f5b66199b7354fc1160a0f5b4e0631b232b7a6ffa231b6ce8c'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '880b87e28055884a05bd5813c9e2ab72d89b1c09d89ec8b5c7d03cb1fccac8ce'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'
  license :gratis

  app 'Vivaldi.app'
end
