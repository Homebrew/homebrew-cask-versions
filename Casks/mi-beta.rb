cask 'mi-beta' do
  version '3.0.0b15'
  sha256 '0be19ec98a78c6825bdee58ac427818d4c7ee0b8ac919afb4ff92aa17ef5e910'

  url "https://www.mimikaki.net/download/mi#{version}.dmg"
  appcast 'https://www.mimikaki.net/download/appcast_beta.xml',
          checkpoint: 'ab27277c3d9359e76bbb03fd7016bd13bc06404b3cc77192fca267aba5e98b99'
  name 'mi'
  homepage 'https://www.mimikaki.net/download/beta.html'

  depends_on macos: '>= :lion'

  app 'mi.app'

  zap trash: [
               '~/Library/Caches/net.mimikaki.mi',
               '~/Library/Preferences/net.mimikaki.mi.plist',
             ]
end
