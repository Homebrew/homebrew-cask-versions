cask :v1 => 'macvim-kaoriya' do
  version '7.4.712-20150429'
  sha256 'dc88078d53814eb86c860d7c9bf05d2fb4d7cd4ef76601bdf8518e8643dd4474'

  url 'https://github.com/splhack/macvim-kaoriya/releases/download/20150429/macvim-kaoriya-20150429.dmg'
  homepage 'https://github.com/splhack/macvim-kaoriya'
  license :oss

  app 'MacVim.app'
end
