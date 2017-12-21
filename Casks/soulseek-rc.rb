cask 'soulseek-rc' do
  version '2017-11-21'
  sha256 'ec9889bed69107fe56fd78745a668ef574bdd7d29ddd370464136109cbc4f11f'

  # dl.dropboxusercontent.com/s/ruvio22uu1onddi was verified as official when first introduced to the cask
  url "https://dl.dropboxusercontent.com/s/ruvio22uu1onddi/SoulseekQt-#{version}.dmg"
  name 'Soulseek'
  homepage 'https://www.slsknet.org/'

  depends_on macos: '>= :mavericks'

  app 'SoulseekQt.app'
end
