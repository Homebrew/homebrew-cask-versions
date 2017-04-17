cask 'royal-tsx-beta' do
  version '3.1.4.4'
  sha256 '6128e399e6d5b29dbcbc57bb5b2b50448ad0264d75eec0d656e836e2f836ad89'

  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: 'fbc81871883fa715a2e3b941ea9301179ebce380de5a7c20bac1748e2a529c35'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/osx/features'

  app 'Royal TSX.app'
end
