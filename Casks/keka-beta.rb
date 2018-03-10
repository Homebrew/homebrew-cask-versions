cask 'keka-beta' do
  version '1.1.0,7'
  sha256 'b75ab747b9c686227e77a091f937ff9686b1a9fcbb55663e42af0670dc1dded0'

  # github.com/aonez/Keka was verified as official when first introduced to the cask
  url "https://github.com/aonez/Keka/releases/download/v#{version.before_comma}-beta.#{version.after_comma}/Keka-#{version.before_comma}-beta.#{version.after_comma}.dmg"
  appcast 'https://github.com/aonez/Keka/releases.atom',
          checkpoint: '6b03977d3ba196a396941a5a17ad9d907294c9803b9937574ab941eebae4e8ce'
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
