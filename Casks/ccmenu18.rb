cask :v1 => 'ccmenu18' do
  version '1.8'
  sha256 'e2d36083388b4c68c1dff396393f4d3b2df614ff09deca1fdd9bbba286f7faa5'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/project/ccmenu/CCMenu/#{version}/ccmenu-#{version}-b.dmg"
  appcast 'http://ccmenu.sourceforge.net/update-stable.xml',
          :sha256 => 'a72951f416906d309cb7ec8d233bf5546540641efa99332e0f1bdde119b51cac'
  name 'CCMenu'
  homepage 'http://ccmenu.org/'
  license :bsd

  app 'CCMenu.app'
end
