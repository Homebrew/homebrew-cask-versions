cask 'vivaldi-snapshot' do
  version '1.5.609.8'
  sha256 '48cbdab324a21b1981014a27000ea6b02a20753e917fd107a76be79f95635dc1'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '7f00ebc043c8ebf5d3deb8040509f2dddf140b9ded7299832b5100f0bd51b6be'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'
  license :gratis

  app 'Vivaldi.app'
end
