cask 'royal-tsx-beta' do
  version '3.1.0.1000'
  sha256 'ab2985a14a46603e7b374d0280a7b23d09ffc48a8cc572d799820b812a6942da'

  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: '3f43633839fc91f71275134e6ad3249d8cd93a5bd37e98e10efe2325c7aba984'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/osx/features'

  app 'Royal TSX.app'
end
