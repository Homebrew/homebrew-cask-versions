cask 'keka-beta' do
  version '1.1.0,8'
  sha256 'bee697f1fcb7bf9b763c6b6c9db003701bbfab893e61fb694de87d2645c8fe44'

  # github.com/aonez/Keka was verified as official when first introduced to the cask
  url "https://github.com/aonez/Keka/releases/download/v#{version.before_comma}-beta.#{version.after_comma}/Keka-#{version.before_comma}-beta.#{version.after_comma}.dmg"
  appcast 'https://github.com/aonez/Keka/releases.atom',
          checkpoint: 'fc7c71b1bf0be4fdb216d7894bddb366871d92a703235c9ce5643b5e1c901205'
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
