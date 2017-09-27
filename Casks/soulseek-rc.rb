cask 'soulseek-rc' do
  version '2017-7-29'
  sha256 '2ccc407192e91a3a15ab60214e1799145434d666251e801b540701c406825758'

  # dropbox.com/s/jx7790ztbn147ko/SoulseekQt- was verified as official when first introduced to the cask
  url "https://www.dropbox.com/s/jx7790ztbn147ko/SoulseekQt-#{version}.dmg?dl=1"
  name 'Soulseek'
  homepage 'https://www.slsknet.org/'

  depends_on macos: '>= :mavericks'

  app 'SoulseekQt.app'
end
