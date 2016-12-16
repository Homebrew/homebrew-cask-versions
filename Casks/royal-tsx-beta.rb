cask 'royal-tsx-beta' do
  version '3.0.0.54'
  sha256 'cf8f5ee0e364fc1dec41c92475b1ddd8070dbbe74ad95441ccbe4ec26248f4c3'

  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: 'ba48e9fff3a1d15b3e5dbb96bde7313ad810b8f80038a797b5319387d3eb2137'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/osx/features'

  app 'Royal TSX.app'
end
