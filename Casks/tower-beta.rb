cask 'tower-beta' do
  version '3.0.0-142,142-7bc44ea4'
  sha256 'b9e23dd307d6351b93767ec1e264388671ac32acf08563a3b7c16bcb9011598a'

  # amazonaws.com/apps/tower3-mac was verified as official when first introduced to the cask
  url "https://fournova-app-updates.s3.amazonaws.com/apps/tower3-mac/#{version.after_comma}/Tower-#{version.before_comma}.zip"
  appcast "https://updates.fournova.com/updates/tower#{version.major}-mac/beta",
          checkpoint: '41a2b1c60214e0d350c92fb051ffeccf17ba2ba0de1411dd5a4e7f5fab2c12d4'
  name 'Tower'
  homepage 'https://www.git-tower.com/public-beta-2018'

  app 'Tower.app'
  binary "#{appdir}/Tower.app/Contents/MacOS/gittower"

  zap trash: [
               '~/Library/Application Support/com.fournova.Tower*',
               '~/Library/Caches/com.fournova.Tower*',
               '~/Library/Preferences/com.fournova.Tower*.plist',
             ]
end
