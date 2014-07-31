class NodeWebkit32bit < Cask
  version '0.10.1'
  sha256 '8add8b5b28eedf52f9b04919b0012a1437390bd65d1b32a10505c9b6d0fb751c'

  url "http://dl.node-webkit.org/v#{version}/node-webkit-v#{version}-osx-ia32.zip"
  homepage 'https://github.com/rogerwang/node-webkit'

  caskroom_only true
end
