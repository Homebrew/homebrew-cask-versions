cask 'royal-tsx-beta' do
  version '3.2.1.7'
  sha256 '6582fe81e25ce274d8a181aedf17b9fc7db422f6a7dcbd4fbc0fd62e096284d7'

  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: '924239968b94a97e4a53259d654fced160b62c3cacd0245c37d4e15a9ffe40ff'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/mac/features'

  app 'Royal TSX.app'
end
