cask :v1 => 'vivaldi-snapshot' do
  version '1.0.291.18'
  sha256 '717ba8568f3494e0a085b99e2ddcbd9675dc963c2fa675343f947fd7c4171747'

  url "https://vivaldi.com/download/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          :sha256 => 'a122266df013be52913e2d864376179f9e1b9b09f1a888c8053151e796a859d8'
  name 'Vivaldi'
  homepage 'https://vivaldi.com'
  license :gratis

  app 'Vivaldi.app'
end
