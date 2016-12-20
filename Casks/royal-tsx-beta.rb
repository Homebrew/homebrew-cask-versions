cask 'royal-tsx-beta' do
  version '3.0.0.1000'
  sha256 'cd2fce3697f9b414285b2631587d4c2449e0f45a686f1869288e2ac11de958ff'

  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: 'c99256f021db6d9e70454069d2237f3ce2664ef9afe4bd599f450781cccc1d12'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/osx/features'

  app 'Royal TSX.app'
end
