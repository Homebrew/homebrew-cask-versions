cask 'royal-tsx-beta' do
  version '3.2.8.3'
  sha256 'dd039676d24f29447d0272e49736ff122e520f1c859bdf7bf111c559c40c25b2'

  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: '55172c91a43918e33e69b86d1593aa3176d1fddb735bf8c8481e59af53d294e6'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/mac/features'

  app 'Royal TSX.app'
end
