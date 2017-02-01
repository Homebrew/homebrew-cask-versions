cask 'vivaldi-snapshot' do
  version '1.7.735.27'
  sha256 '1c7c0d6a77fda348594c3d218b7fe64bf6a0f6b15cf0e5c5dac4f9fabd9e5c76'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: 'c30a8b8f35c9eede87498e7257f32d7dca731de0408b247806347b7753400f6d'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
