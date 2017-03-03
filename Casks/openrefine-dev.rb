cask 'openrefine-dev' do
  version '2.7-rc.2'
  sha256 '46a0aa3591acf6f4690a7862cc221900da2814ac791df2c2dc85bc9cfa70f8fb'

  # github.com/OpenRefine/OpenRefine was verified as official when first introduced to the cask
  url "https://github.com/OpenRefine/OpenRefine/releases/download/#{version}/openrefine-mac-#{version}.dmg"
  name 'OpenRefine'
  homepage 'http://openrefine.org/'

  app 'OpenRefine.app'
end
