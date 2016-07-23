cask 'vivaldi-snapshot' do
  version '1.3.544.25'
  sha256 '36f984af82855e458f306218c90542a2fa4de464a0d4153d730e6bb9c90027ab'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: 'e2a417cd439a1dbc567382ce92e687df051d741424a47517afd6ebb0c0a223c8'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'
  license :gratis

  app 'Vivaldi.app'
end
