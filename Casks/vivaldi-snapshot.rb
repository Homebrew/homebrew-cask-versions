cask 'vivaldi-snapshot' do
  version '1.5.658.31'
  sha256 'dbc7aeba3cd2138754fe68da029f8bc0d322dab274bdbdbb4147009531269c77'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '59eccd03feac644dde01ea9c01c2535de001198e4a2f922f68e79034e8836cbe'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
