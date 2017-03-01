cask 'royal-tsx-beta' do
  version '3.0.1.10'
  sha256 'd4ffa8dbe1690bd2e6bb722d05d15327068a05ccfe03aa9c06bb2cf81fe27016'

  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: 'd1cea45e36f3f805395c0f802a32dd4af934e6a2eb9fe6b7a1e0afeb2b6afc34'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/osx/features'

  app 'Royal TSX.app'
end
