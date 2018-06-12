cask 'lingon-x5' do
  version '5.2.9'
  sha256 '7169aaa861626f62112c6ac24256226cd5a5f3b73dade41a4a803232d5942063'

  url "https://www.peterborgapps.com/downloads/LingonX#{version.major}.zip"
  appcast "https://www.peterborgapps.com/updates/lingonx#{version.major}-appcast.xml"
  name 'Lingon X'
  homepage 'https://www.peterborgapps.com/lingon/'

  depends_on macos: '>= :sierra'

  app 'Lingon X.app'

  zap trash: [
               "~/Library/Application Scripts/com.peterborgapps.LingonX#{version.major}",
               '~/Library/Application Support/LingonX',
               "~/Library/Caches/com.peterborgapps.LingonX#{version.major}",
               "~/Library/Containers/com.peterborgapps.LingonX#{version.major}",
               "~/Library/Preferences/com.peterborgapps.LingonX#{version.major}.plist",
               "~/Library/Saved Application State/com.peterborgapps.LingonX#{version.major}.savedState",
             ]
end
