cask :v1 => 'macvim-kaoriya' do
  version '7.4.769-20150707'
  sha256 '230281d1729e6426b2909772a29ff7f15e9c2a060fe66a7b8205ef1a0b7cfbdc'

  url 'https://github.com/splhack/macvim-kaoriya/releases/download/20150707/macvim-kaoriya-20150707.dmg'
  homepage 'https://github.com/splhack/macvim-kaoriya'
  license :oss

  app 'MacVim.app'
end
