cask 'royal-tsx-beta' do
  version '3.0.0.33'
  sha256 '4f4909211f6b7f9726d84c73ed6d2813d9910dfc1778d376b5afcf7e536040c5'

  # royaltsx-v3.royalapplications.com was verified as official when first introduced to the cask
  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: 'bd4e9be32ad025747402e78f06bae380bada18d6190b79303bf634b72e728a6f'
  name 'Royal TSX'
  homepage 'http://www.royaltsx.com'
  license :freemium

  app 'Royal TSX.app'
end
