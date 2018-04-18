cask 'keka-beta' do
  version '1.1.0,10'
  sha256 '9ad00c76b14f25f55edbed785c0b214f0d3591cd24ae9ba198a28bb5bb0ec38a'

  # github.com/aonez/Keka was verified as official when first introduced to the cask
  url "https://github.com/aonez/Keka/releases/download/v#{version.before_comma}-beta.#{version.after_comma}/Keka-#{version.before_comma}-beta.#{version.after_comma}.dmg"
  appcast 'https://github.com/aonez/Keka/releases.atom',
          checkpoint: 'f063b1c39c0f5fe0dc7b0b667d398495cc4d6ffd790b689827370c6269125a11'
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
