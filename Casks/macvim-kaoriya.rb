cask :v1 => 'macvim-kaoriya' do
  version '7.4.648-20150304'
  sha256 '95522df8a0f55de48fe9670831872760215ded26a1b5924bf95309c4201ecff9'

  url 'https://github.com/splhack/macvim/releases/download/20150304/macvim-kaoriya-20150304.dmg'
  homepage 'https://code.google.com/p/macvim-kaoriya/'
  license :oss

  app 'MacVim.app'
end
