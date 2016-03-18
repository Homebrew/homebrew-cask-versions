cask 'vivaldi-snapshot' do
  version '1.0.425.3'
  sha256 '6771c8d6c3b127dcfe36466e69aa62aab7252c8e313b600ac4faf528ee166439'

  url "https://vivaldi.com/download/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: 'f63eb6b46892c1c3166a9ae55efd75ebb98951e2c7df934bd3fda80cf5e8b71e'
  name 'Vivaldi'
  homepage 'https://vivaldi.com'
  license :gratis

  app 'Vivaldi.app'
end
