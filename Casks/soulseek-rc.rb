cask 'soulseek-rc' do
  version '2017-7-29'
  sha256 '2ccc407192e91a3a15ab60214e1799145434d666251e801b540701c406825758'

  # dl.dropboxusercontent.com/s/jx7790ztbn147ko was verified as official when first introduced to the cask
  url "https://dl.dropboxusercontent.com/s/jx7790ztbn147ko/SoulseekQt-#{version}.dmg"
  name 'Soulseek'
  homepage 'https://www.slsknet.org/'

  depends_on macos: '>= :mavericks'

  app 'SoulseekQt.app'
end
