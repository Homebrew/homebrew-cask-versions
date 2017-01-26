cask 'royal-tsx-beta' do
  version '3.0.1.5'
  sha256 'd3a86992c1b298e16c736b5b755cc2bb0f97069bb0141db7c19dd8126f3e2339'

  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: 'ad6415042e7556e56a2bdadd31f75d0451d1b14a853a333005ccc9c78adbd9ea'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/osx/features'

  app 'Royal TSX.app'
end
