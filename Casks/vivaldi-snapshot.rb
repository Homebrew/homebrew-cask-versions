cask :v1 => 'vivaldi-snapshot' do
  version '1.0.340.7'
  sha256 'ee72cb54031e264b3ae095b2802d282d5877af83af2d0d0561956debeac6e30a'

  url "https://vivaldi.com/download/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          :sha256 => '69a2cea3880e51491355144f74ceb69946161289a7a96ffb024c9f55d6607e91'
  name 'Vivaldi'
  homepage 'https://vivaldi.com'
  license :gratis

  app 'Vivaldi.app'
end
