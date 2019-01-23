cask 'kap-beta' do
  version '3.0.0-beta.4'
  sha256 '4aeac22577ec430afd38149cf2e1657378c0016a49d3fd56e635a385411e1f8f'

  # github.com/wulkano/kap was verified as official when first introduced to the cask
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
