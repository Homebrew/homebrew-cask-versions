cask 'kap-beta' do
  version '3.0.0-beta.5'
  sha256 '63cdce9ed6487a98cb1f8d09cda71d9d9371fc72b7459a2cbd0d52c10e90e0ef'

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
