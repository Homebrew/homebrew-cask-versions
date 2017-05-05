cask 'royal-tsx-beta' do
  version '3.1.4.8'
  sha256 'dfd9bf21b892588c3c7b4596f6357f51a07b7afb26932a4abe8bdf694088a6da'

  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: '2b6c876c40b0b9bee7629485928c57aaf845fa660b6b640646aba44c6a7ca1df'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/osx/features'

  app 'Royal TSX.app'
end
