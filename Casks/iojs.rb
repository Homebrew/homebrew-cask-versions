cask :v1 => 'iojs' do
  version 'v1.0.1'
  sha256 'af3fb3dfbd7e21db007d29610d1337b5cb6ec55fcb7e8d3240471059dd123f27'

  url "https://iojs.org/dist/#{version}/iojs-#{version}.pkg"
  name 'io.js'
  homepage 'https://iojs.org'
  license :oss

  pkg "iojs-#{version}.pkg"

  uninstall :pkgutil => [
                         'com.nodesource.iojs.npm.pkg',
                         'com.nodesource.iojs.pkg'
                        ]
end
