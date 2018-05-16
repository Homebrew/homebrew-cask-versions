cask 'royal-tsx-beta' do
  version '3.2.9.1000'
  sha256 'c30ebcc9db5d0ab73a6298691354665afc6c9dee074773e5a3888b909ba1b139'

  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: '0c5cd7a537c13f4ff0a26be11ef3f2a251c23f6a74652c04380bcc6d5863855c'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/mac/features'

  app 'Royal TSX.app'
end
