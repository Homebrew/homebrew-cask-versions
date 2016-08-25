cask 'royal-tsx-beta' do
  version '3.0.0.30'
  sha256 '232b722bc6f40481d3242a5b382b50a1772aea25145c73a7ccfd2548b4b4b1b8'

  # royaltsx-v3.royalapplications.com was verified as official when first introduced to the cask
  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: '94ea5c5420fb0a7b9c24175527b07547799387d58acfed275ae4a492b47716b7'
  name 'Royal TSX'
  homepage 'http://www.royaltsx.com'
  license :freemium

  app 'Royal TSX.app'
end
