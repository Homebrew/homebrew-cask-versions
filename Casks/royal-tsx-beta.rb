cask 'royal-tsx-beta' do
  version '3.1.4.3'
  sha256 '21acb4e22cb8d760a80bb5df61c2273ded15bc60bff25039df6ae3d578375721'

  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: '871857c50c995c9f3ffb42158c1638351481d7c46cdcb20b237683db77c54dd2'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/osx/features'

  app 'Royal TSX.app'
end
