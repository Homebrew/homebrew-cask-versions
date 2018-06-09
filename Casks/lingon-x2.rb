cask 'lingon-x2' do
  version '2.3.8'
  sha256 '84b0b71e5c39bbb548c196dd2c0d693f0b8c143336a603b591934080c12f630d'

  url "https://www.peterborgapps.com/downloads/LingonX#{version.major}.zip"
  appcast "https://www.peterborgapps.com/updates/lingonx#{version.major}-appcast.xml"
  name 'Lingon X'
  homepage 'https://www.peterborgapps.com/lingon/'

  depends_on macos: :yosemite

  app 'Lingon X.app'
end
