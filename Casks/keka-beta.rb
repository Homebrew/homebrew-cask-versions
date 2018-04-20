cask 'keka-beta' do
  version '1.1.0,1'
  sha256 '02c835e6e1906a4bdce35d8a473f04c26ebf0537d87a3244135aaaa9dccae75d'

  # github.com/aonez/Keka was verified as official when first introduced to the cask
  url "https://github.com/aonez/Keka/releases/download/v#{version.before_comma}-rc.#{version.after_comma}/Keka-#{version.before_comma}-rc.#{version.after_comma}.dmg"
  appcast 'https://github.com/aonez/Keka/releases.atom',
          checkpoint: 'd878e18a600e07e63ffa6a232b2ce6f6f1deb30960816229b29fbfa5f74926f2'
  name 'Keka'
  homepage 'http://www.kekaosx.com/'

  auto_updates true
  conflicts_with cask: 'keka'
  depends_on macos: '>= :mountain_lion'

  app 'Keka.app'

  zap trash: [
               '~/Library/Application Support/Keka',
               '~/Library/Caches/com.aone.keka',
               '~/Library/Preferences/com.aone.keka.plist',
               '~/Library/Saved Application State/com.aone.keka.savedState',
             ]
end
