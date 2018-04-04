cask 'keka-beta' do
  version '1.1.0,9'
  sha256 '5b2eb698ff2395c765fb92f3fc158e9c0222e0b454749ae24c1cb508c59e54e2'

  # github.com/aonez/Keka was verified as official when first introduced to the cask
  url "https://github.com/aonez/Keka/releases/download/v#{version.before_comma}-beta.#{version.after_comma}/Keka-#{version.before_comma}-beta.#{version.after_comma}.dmg"
  appcast 'https://github.com/aonez/Keka/releases.atom',
          checkpoint: '38d9902876e25fdf81ff368eb5f9bcdb4dbe2004ed7cd9eaecc73a07d12d4dc2'
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
