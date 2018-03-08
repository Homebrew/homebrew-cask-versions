cask 'keka-beta' do
  version '1.1.0,6'
  sha256 '976e966fe1f45748d28c2ac66ce52942c435cfb2adb5974c157287d09061a5e2'

  # github.com/aonez/Keka was verified as official when first introduced to the cask
  url "https://github.com/aonez/Keka/releases/download/v#{version.before_comma}-beta.#{version.after_comma}/Keka-#{version.before_comma}-beta.#{version.after_comma}.dmg"
  appcast 'https://github.com/aonez/Keka/releases.atom',
          checkpoint: '656cef171a9625a5699a53e3e4d97cadf037a367b62a90642d9a268643324b88'
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
