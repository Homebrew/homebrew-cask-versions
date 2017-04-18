cask 'alfred-beta' do
  version '3'
  sha256 '2f96e275ec4d2d0bce1811e9ced945775a2f9d447abe3c240ed360c565a5a4cc'

  url "https://cachefly.alfredapp.com/beta/Alfred_#{version}_Beta_latest.zip"
  name 'Alfred'
  homepage 'https://www.alfredapp.com/'
  license :freemium

  auto_updates true
  accessibility_access true

  app 'Alfred 3.app'

  postflight do
    suppress_move_to_applications key: 'suppressMoveToApplications'
  end

  uninstall quit:       'com.runningwithcrayons.Alfred-3',
            login_item: 'Alfred 3'

  zap delete: [
                '~/Library/Application Support/Alfred 3',
                '~/Library/Caches/com.runningwithcrayons.Alfred-3',
                '~/Library/Caches/com.runningwithcrayons.Alfred-Preferences',
                '~/Library/Preferences/com.runningwithcrayons.Alfred-3.plist',
                '~/Library/Preferences/com.runningwithcrayons.Alfred-Preferences.plist',
                '~/Library/Saved Application State/com.runningwithcrayons.Alfred-Preferences.savedState',
              ]
end
