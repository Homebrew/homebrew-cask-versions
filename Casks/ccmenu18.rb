cask :v1 => 'ccmenu18' do
  version '1.8.1'
  sha256 '153a72602c6f9d5900569fbc514d4e5e273712e9b6321bc18174c6c57a46416f'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/project/ccmenu/CCMenu/#{version}/ccmenu-#{version}-b.dmg"
  appcast 'http://ccmenu.sourceforge.net/update-stable.xml',
          :sha256 => '3104a3a4e9b3cffee27464abdf5704d6d31814527326c796ae7064bfbab4b797'
  name 'CCMenu'
  homepage 'http://ccmenu.org/'
  license :bsd

  app 'CCMenu.app'
end
