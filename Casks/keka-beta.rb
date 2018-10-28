cask 'keka-beta' do
  version '1.1.5,2'
  sha256 '82480e14daf94097710a3a3be0f01e6413cd7f45ea8b516aa8fdc4801c8418c8'

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
