cask 'lingon-x4' do
  version '4.3.9'
  sha256 '85d5b7e28f3b404b285d11e35311dbb7d9cc23df20ebb089c08a7483e37e62ef'

  url "https://www.peterborgapps.com/downloads/LingonX#{version.major}.zip"
  appcast "https://www.peterborgapps.com/updates/lingonx#{version.major}-appcast.xml"
  name 'Lingon X'
  homepage 'https://www.peterborgapps.com/lingon/'

  depends_on macos: '>= :el_capitan'

  app 'Lingon X.app'

  zap trash: [
               '~/Library/Application Scripts/com.peterborgapps.LingonX4Agent',
               '~/Library/Caches/com.peterborgapps.LingonX4',
               '~/Library/Containers/com.peterborgapps.LingonX4Agent',
               '~/Library/Preferences/com.peterborgapps.LingonX4.plist',
             ]
end
