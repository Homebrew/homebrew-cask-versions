cask 'royal-tsx-beta' do
  version '3.0.0.44'
  sha256 '30090143b324bf110da2ea19b3dd8c1417fdc807288fedaa5870feac009a2202'

  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: '02c95d7afc4631c1adf9eff8d4d9337a0d381a8062ef8cbc5dea2f990b0f5caa'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/osx/features/'

  app 'Royal TSX.app'
end
