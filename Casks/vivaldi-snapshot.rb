cask 'vivaldi-snapshot' do
  version '1.10.867.3'
  sha256 '56e879fb8254c48f6048cce936fb114df636df6b3a1f7abafc7324bc814d7c37'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '513d0f97b2edd625a7c5b40cfac77b82d82f8a3e785058cf722daf1642af3532'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
