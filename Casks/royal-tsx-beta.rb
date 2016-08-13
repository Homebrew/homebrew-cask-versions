cask 'royal-tsx-beta' do
  version '3.0.0.27'
  sha256 'dc361f824b15de37fc1eb24d1ccd0dc81dae7635f81ea34eb2b893a95d628f9a'

  # royaltsx-v3.royalapplications.com was verified as official when first introduced to the cask
  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: '3ae23fb039b15e2166b5360c471bc61e16d2454a2b5db051843330b644405ae5'
  name 'Royal TSX'
  homepage 'http://www.royaltsx.com'
  license :freemium

  app 'Royal TSX.app'
end
