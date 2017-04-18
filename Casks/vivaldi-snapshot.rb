cask 'vivaldi-snapshot' do
  version '1.9.818.3'
  sha256 'e2a4ab91d7642ee6419d32610f072ca93869a55138f16e44b88ed884df6c22cc'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: 'e77b491a0effa305013064a926af91acccbfd86c4fd64331276e2da0fbede405'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
