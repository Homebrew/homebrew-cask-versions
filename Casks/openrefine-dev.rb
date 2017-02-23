cask 'openrefine-dev' do
  version '2.7-rc.1'
  sha256 '52328dfd76a5eaf2062aba563ef8aa45f56aa621e391326fe0e4a1644b31ae04'

  # github.com/OpenRefine/OpenRefine was verified as official when first introduced to the cask
  url "https://github.com/OpenRefine/OpenRefine/releases/download/#{version}/openrefine-mac-#{version}.dmg"
  name 'OpenRefine'
  homepage 'http://openrefine.org/'

  app 'OpenRefine.app'
end
