cask 'royal-tsx-beta' do
  version '3.2.8.1000'
  sha256 '422e5aaff2f790a99537380462463c6c49079a22b1119de4903900b0662fcbfc'

  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: 'b3ca8d822487a885247b73ddd967b2a94d35c08f51a684f14cf97bf1e8ea86b5'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/mac/features'

  app 'Royal TSX.app'
end
