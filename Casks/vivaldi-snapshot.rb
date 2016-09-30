cask 'vivaldi-snapshot' do
  version '1.5.618.8'
  sha256 'efa144846cc87d844b92041b22e77cf23c94d588257d90f8419df0e3eeec24a8'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: 'cf246103f9d7482b080542b0b2279563bcc766b3a94886dc1ee87ac90af5417a'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'
  license :gratis

  app 'Vivaldi.app'
end
