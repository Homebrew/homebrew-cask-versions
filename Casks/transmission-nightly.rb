cask 'transmission-nightly' do
  version '14698,6419'
  sha256 'a13599cf7f393c100bdd7d073a55e3cfbb571260686fcdbd8bbc91927418f82d'

  url "https://build.transmissionbt.com/job/trunk-mac/#{version.after_comma}/artifact/release/Transmission-#{version.before_comma}.dmg"
  name 'Transmission'
  homepage 'http://www.transmissionbt.com/'
  license :gpl

  app 'Transmission.app'

  zap delete: [
                '~/Library/Application Support/Transmission',
                '~/Library/Preferences/org.m0k.transmission.plist',
                '~/Library/Preferences/org.m0k.transmission.LSSharedFileList.plist',
                '~/Library/Caches/org.m0k.transmission',
                '~/Library/Saved Application State/org.m0k.transmission.savedState',
              ]
end
