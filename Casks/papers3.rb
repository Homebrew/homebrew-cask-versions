cask 'papers3' do
  version '3.4.20_579'
  sha256 '48882e7852cd60ee42356e16fc297bbbe4f49c6a01f8a4a9127cfd10e45ff775'

  # downloads.mekentosj.com was verified as official when first introduced to the cask
  url "https://downloads.mekentosj.com/papers_#{version.no_dots}.dmg"
  name 'Papers3'
  homepage 'https://support.papersapp.com/support/solutions/30000034695'

  app 'Papers.app'

  uninstall login_item: 'Citations'

  zap trash: [
               '~/Library/Application Support/Papers3',
               '~/Library/Caches/com.mekentosj.Citations',
               '~/Library/Caches/com.mekentosj.papers3',
               '~/Library/Preferences/com.mekentosj.Citations.plist',
               '~/Library/Preferences/com.mekentosj.papers3',
             ]
end
