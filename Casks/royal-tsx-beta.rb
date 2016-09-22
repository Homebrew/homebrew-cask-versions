cask 'royal-tsx-beta' do
  version '3.0.0.35'
  sha256 'eb1e1bdb43e5cf635d0e59fc463d694fb13f34227fdf704bdf6636a83da1ad12'

  # royaltsx-v3.royalapplications.com was verified as official when first introduced to the cask
  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: 'f3010b296ac5eefa0a57d1762a28b37a48242a7b4edfbb4066b4e8c811520850'
  name 'Royal TSX'
  homepage 'http://www.royaltsx.com'
  license :freemium

  app 'Royal TSX.app'
end
