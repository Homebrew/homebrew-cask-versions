cask 'royal-tsx-beta' do
  version '3.0.1.4'
  sha256 'eb8d95f8d2b16af577a5c8933096047951bf20876a5daa0bc57f4ba8b8a15a2e'

  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: '5b3b48633bca457688ba3ba6c13c08af2606a373c2c4d2b60a39d4821e81b646'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/osx/features'

  app 'Royal TSX.app'
end
