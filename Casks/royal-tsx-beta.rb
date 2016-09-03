cask 'royal-tsx-beta' do
  version '3.0.0.32'
  sha256 'e5f083614b10acb6df620dc3027e79d877f951a6b839334fbdbf02c817e348c4'

  # royaltsx-v3.royalapplications.com was verified as official when first introduced to the cask
  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: 'ab0a50a19e6a35a425bb35b8bcb70b777492277d60832f9a505c66c858932113'
  name 'Royal TSX'
  homepage 'http://www.royaltsx.com'
  license :freemium

  app 'Royal TSX.app'
end
