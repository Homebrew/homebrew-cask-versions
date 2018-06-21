cask 'royal-tsx-beta' do
  version '3.3.1.1'
  sha256 'ce79a71bcf68176d56269e12cbe863386eef8267b4d7012ed46f55fe34dffa84'

  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/mac/features'

  app 'Royal TSX.app'
end
