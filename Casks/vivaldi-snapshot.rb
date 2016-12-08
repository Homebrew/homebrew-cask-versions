cask 'vivaldi-snapshot' do
  version '1.6.689.13'
  sha256 'd4a1e0537c693087cc47259a84cec57a0d23d291cd5f1be990beb0106506c0c7'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '8ee652aab0a606e84b1d0d3229dafe3c3e3fcd64bab06d3baeb52978f59c4380'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
