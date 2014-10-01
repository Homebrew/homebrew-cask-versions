class NodeWebkit32bit < Cask
  version '0.10.5'
  sha256 '5ff8e236072f9eeac0b44c7df8f78e47508ed6d1f90f85b60ab2a1245a641940'

  url "http://dl.node-webkit.org/v#{version}/node-webkit-v#{version}-osx-ia32.zip"
  homepage 'https://github.com/rogerwang/node-webkit'
  license :oss

  caskroom_only true
end
