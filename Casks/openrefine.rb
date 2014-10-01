class Openrefine < Cask
  version '2.6-beta.1'
  sha256 '061c8efd8d6db08891bc1eac7226ce9ab8fd3934dce4f8f542356b8c2e8c06ca'

  url "https://github.com/OpenRefine/OpenRefine/releases/download/#{version}/openrefine-mac-#{version}.dmg"
  homepage 'http://openrefine.org/'
  license :oss

  app 'OpenRefine.app'
end
