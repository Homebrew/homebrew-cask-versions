cask 'keka-beta' do
  version '1.1.5,1'
  sha256 '38f05e88c0608fa4d53fc782b8056c6221a1bca3f1eb288deaa85c3fbe496fb0'

  # github.com/aonez/Keka was verified as official when first introduced to the cask
  url "https://github.com/aonez/Keka/releases/download/v#{version.before_comma}-rc.#{version.after_comma}/Keka-#{version.before_comma}-rc.#{version.after_comma}.dmg"
  appcast 'https://github.com/aonez/Keka/releases.atom'
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
