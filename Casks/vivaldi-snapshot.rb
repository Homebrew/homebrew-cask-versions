cask :v1 => 'vivaldi-snapshot' do
  version '1.0.270.16'
  sha256 '51d2be00a5d564d4ab1201d28e32d6338a4231a7de6cb704be2174305d95ed84'

  url "https://vivaldi.com/download/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          :sha256 => 'e29c00e2eba512f737b70dd9ba9c2a453c5160046b58e6b0b42d68f84939f204'
  name 'Vivaldi'
  homepage 'https://vivaldi.com'
  license :gratis

  app 'Vivaldi.app'
end
