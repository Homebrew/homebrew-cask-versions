cask 'openrefine-dev' do
  version '2.6-rc.2'
  sha256 '7703016e4935961ce89c26c0c4c780011329321ed32367082f329dae38704037'

  # github.com/OpenRefine/OpenRefine was verified as official when first introduced to the cask
  url "https://github.com/OpenRefine/OpenRefine/releases/download/#{version}/openrefine-mac-#{version}.dmg"
  name 'OpenRefine'
  homepage 'http://openrefine.org/'
  license :bsd

  app 'OpenRefine.app'
end
