class NodeWebkit32bit < Cask
  version '0.10.4'
  sha256 'd846fb0b35d86e029794051062d72e49f72eaf23831fdcea4da4577815f5d331'

  url "http://dl.node-webkit.org/v#{version}/node-webkit-v#{version}-osx-ia32.zip"
  homepage 'https://github.com/rogerwang/node-webkit'

  caskroom_only true
end
