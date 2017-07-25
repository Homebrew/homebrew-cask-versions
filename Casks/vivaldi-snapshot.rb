cask 'vivaldi-snapshot' do
  version '1.11.915.3'
  sha256 'a7b87fb88a15e20a91c26c99b52088fce078d29a14c5c364a7bd2747327b045a'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '3bb060af9a1a610c491246361bae43e24b8440a76c06b0d4490e0b47536e2b89'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
