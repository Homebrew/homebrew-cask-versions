cask 'kap-beta' do
  version '3.0.0-beta.6'
  sha256 'b4b82e82224787b44c292647fd18763beec8c13db9022307f50a2cefd1ef58f3'

  # github.com/wulkano/kap/ was verified as official when first introduced to the cask
  url "https://github.com/wulkano/kap/releases/download/v#{version}/kap-beta-#{version}.dmg"
  appcast 'https://github.com/wulkano/kap/releases.atom'
  name 'Kap Beta'
  homepage 'https://getkap.co/'

  auto_updates true

  app 'Kap Beta.app'

  zap trash: [
               '~/Library/Preferences/com.wulkano.kap-beta.plist',
               '~/Library/Preferences/com.wulkano.kap-beta.helper.plist',
               '~/Library/Application Support/Kap Beta',
               '~/Library/Saved Application State/com.wulkano.kap-beta.savedState',
               '~/Library/Caches/com.wulkano.kap-beta',
               '~/Library/Caches/com.wulkano.kap-beta.ShipIt',
             ]
end
