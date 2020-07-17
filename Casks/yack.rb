cask 'yack' do
  version '50.0.157'
  sha256 'd2ee5e62d94e0299ba2485291cd01a449b1ff80befd8b49dd3532a7a0d8f3958'

  # yack-prod-public.s3-us-west-2.amazonaws.com was verified as official when first introduced to the cask.
  url 'https://yack-prod-public.s3-us-west-2.amazonaws.com/yack-releases/beta/yack-beta.dmg'
  name 'Yack! - Beta'
  homepage 'http://yack.io/'

  app 'Yack! - Beta.app'
end
