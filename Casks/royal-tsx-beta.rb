cask 'royal-tsx-beta' do
  version '3.0.0.52'
  sha256 '2c8a16c15f8b7a5151652debe214034785742db9d332722320dcafca1b214d24'

  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: '395af5ec0185bd36410aad3f6b489e845f4dc825122dad944eb135b965067d1e'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/osx/features'

  app 'Royal TSX.app'
end
