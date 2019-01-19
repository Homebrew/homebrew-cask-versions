cask 'vivaldi-snapshot' do
  version '2.3.1430.4'
  sha256 'c12f5ec5a894509d3bdd7d21bdae5ebf8f28b72e7c4ee25ad114441f87dcb829'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  auto_updates true

  app 'Vivaldi.app'
end
