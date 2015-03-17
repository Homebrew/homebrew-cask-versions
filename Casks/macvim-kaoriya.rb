cask :v1 => 'macvim-kaoriya' do
  version '7.4.648-20150314'
  sha256 '267ed80d3f9b4d28a883810324bcff2ee9a4643f91a54ecc7eae5ca75984cc04'

  url 'https://github.com/splhack/macvim-kaoriya/releases/download/20150314/macvim-kaoriya-20150314.dmg'
  homepage 'https://github.com/splhack/macvim-kaoriya'
  license :oss

  app 'MacVim.app'
end
