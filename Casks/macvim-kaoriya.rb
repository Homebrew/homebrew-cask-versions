cask :v1 => 'macvim-kaoriya' do
  version '7.4.629-20150211'
  sha256 '33c49dc457f24a30122223324b0fa94f230ec8e3cd1a41929fcd06183fc9c550'

  url 'https://github.com/splhack/macvim/releases/download/20150211/macvim-kaoriya-20150211.dmg'
  homepage 'https://code.google.com/p/macvim-kaoriya/'
  license :oss

  app 'MacVim.app'
end
