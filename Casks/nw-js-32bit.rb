cask :v1 => 'nw-js-32bit' do
  version '0.12.1'
  sha256 '75b6280b6fb1d068e439a555079de599e57fb59b115a85e0e144e7d86b947d37'

  url "http://dl.nwjs.io/v#{version}nwjs-v#{version}-osx-ia32.zip"
  homepage 'http://nwjs.io/'
  license :oss

  stage_only true
end
