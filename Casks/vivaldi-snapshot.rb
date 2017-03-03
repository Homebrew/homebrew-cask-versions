cask 'vivaldi-snapshot' do
  version '1.8.770.9'
  sha256 '24895a6b296eaeceb3bae2e36147495192f25b3a592ec52ca04fcb639b94391d'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '79210e1de8860aa3369ed872f1f8ca1a4a7b9fb378000849ba397e130e03c244'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
