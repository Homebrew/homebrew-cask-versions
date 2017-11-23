cask 'royal-tsx-beta' do
  version '3.2.5.1000'
  sha256 '2b8d6b2f8fa26da0f3c9593ee97b963627e3513cb280db2ea4c10cceb72bd14b'

  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: 'c4b1d8eb938dba1785347339780768726778110d00e9eb234eb55397a3055a53'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/mac/features'

  app 'Royal TSX.app'
end
