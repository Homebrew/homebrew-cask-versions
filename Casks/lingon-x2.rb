cask 'lingon-x2' do
  version '2.3.8'
  sha256 '84b0b71e5c39bbb548c196dd2c0d693f0b8c143336a603b591934080c12f630d'

  url "https://www.peterborgapps.com/downloads/LingonX#{version.major}.zip"
  appcast "https://www.peterborgapps.com/updates/lingonx#{version.major}-appcast.xml",
          checkpoint: '09f34256b3da76e74000b606661ee6fc929675de81ccc43b6091b9dcfe2a2386'
  name 'Lingon X'
  homepage 'https://www.peterborgapps.com/lingon/'
  license :commercial

  depends_on macos: :yosemite

  app 'Lingon X.app'
end
