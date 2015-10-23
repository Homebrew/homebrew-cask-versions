cask :v1 => 'vivaldi-snapshot' do
  version '1.0.303.27'
  sha256 '8603f009e043c65e7ff80caaca79847ffa18771e86e991d18db3a19af3ddfd85'

  url "https://vivaldi.com/download/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          :sha256 => '12af0ce7aa747675a408c39876b8a00b293691564c9dd767d4f156913bd6a1c2'
  name 'Vivaldi'
  homepage 'https://vivaldi.com'
  license :gratis

  app 'Vivaldi.app'
end
