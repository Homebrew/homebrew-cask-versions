cask 'vivaldi-snapshot' do
  version '1.8.770.44'
  sha256 '6e28eb9c89f384ad9d76645c6cb7e326783096863af8550a095977635df69ba4'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: 'a12850c7dcbffa58f7c7db4a8a1ccd4c1cde240c71bf31c61605421918a5083b'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
