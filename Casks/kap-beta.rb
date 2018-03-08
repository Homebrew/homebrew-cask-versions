cask 'kap-beta' do
  version '2.1.0-beta.1'
  sha256 '7169233e52cdf60daeeaaa34e79d74b17fa7c932ade2993bfb4c4ebc9826f8b7'

  # github.com/wulkano/kap was verified as official when first introduced to the cask
  url "https://github.com/wulkano/kap/releases/download/v#{version}/kap-beta-#{version}.dmg"
  appcast 'https://github.com/wulkano/kap/releases.atom',
          checkpoint: 'ac78e1e690955628389f1369323974385dd87eed1baa1940af61f7c175e4ab1b'
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
