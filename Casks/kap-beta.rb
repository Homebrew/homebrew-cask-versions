cask 'kap-beta' do
  version '2.0.0-beta.5'
  sha256 '046e4b0a863ad4a8d941f085b72a67060c6bbcfc46cefef34e6253e85ed74232'

  # github.com/wulkano/kap was verified as official when first introduced to the cask
  url "https://github.com/wulkano/kap/releases/download/v#{version}/kap-beta-#{version}.dmg"
  appcast 'https://github.com/wulkano/kap/releases.atom',
          checkpoint: '8522eff5137c8a60569737e790072d0db8acf886778f57836cc5e1a96dcb0735'
  name 'Kap Beta'
  homepage 'https://getkap.co/'

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
