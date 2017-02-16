cask 'openrefine-dev' do
  version '2.7-rc.1'
  sha256 'fade2d4a3663f183daa50a87e71ddfbef7a54dfe12c25d728b3e1a5a9fb8286c'

  # github.com/OpenRefine/OpenRefine was verified as official when first introduced to the cask
  url "https://github.com/OpenRefine/OpenRefine/releases/download/#{version}/openrefine-mac-#{version}.dmg"
  name 'OpenRefine'
  homepage 'http://openrefine.org/'

  app 'OpenRefine.app'
end
