cask 'vivaldi-snapshot' do
  version '1.15.1147.19'
  sha256 '4e30a20125b8675e1f47b366ae73fd8508da4e2bda7ec48be7713d26c73456b1'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: 'c00b2e3b1a7d022690e52fc0ba55650f52f303681a1f135544cf3b7d9fc4e1ab'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
