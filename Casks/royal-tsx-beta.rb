cask 'royal-tsx-beta' do
  version '3.0.0.38'
  sha256 '46c3aad21cf740a73e71ba689d74247be0df276bdbe18bfb598fe3a58376c4e9'

  # royaltsx-v3.royalapplications.com was verified as official when first introduced to the cask
  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: 'bf00291a67cf04dca47de4d0f51021fafe4317a292fbee677c31984fb1b89ac5'
  name 'Royal TSX'
  homepage 'http://www.royaltsx.com'

  app 'Royal TSX.app'
end
