cask 'royal-tsx-beta' do
  version '3.2.6.1000'
  sha256 'd4fbf66b3feabaf256740100be50c68f165171c4d99442679cab764473addb69'

  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: 'd1c603fd45fbe8c6f9e5375db393dabcf4d0279d5681b2aea199977373de6c32'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/mac/features'

  app 'Royal TSX.app'
end
