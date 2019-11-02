cask 'keka-beta' do
  version '1.2.0-dev.3575'
  sha256 'd72b75c1a613cb80a5506a2ae45a867258bdd62a9a41ec697dfe0bdb6003128b'

  # github.com/aonez/Keka was verified as official when first introduced to the cask
  url "https://github.com/aonez/Keka/releases/download/v#{version}/Keka-#{version}.dmg"
  appcast 'https://github.com/aonez/Keka/releases.atom'
  name 'Keka'
  homepage 'https://www.keka.io/#beta'

  auto_updates true
  conflicts_with cask: 'keka'

  app 'Keka.app'

  zap trash: [
               '~/Library/Application Support/Keka',
               '~/Library/Caches/com.aone.keka',
               '~/Library/Preferences/com.aone.keka.plist',
               '~/Library/Saved Application State/com.aone.keka.savedState',
             ]
end
