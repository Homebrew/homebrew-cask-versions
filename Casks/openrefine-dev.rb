cask :v1 => 'openrefine-dev' do
  version '2.6-rc1'
  sha256 'e2351adc641b8d828ee9cc4c55f595b2cc65b83b29502bb671f55039c0536f33'

  url "https://github.com/OpenRefine/OpenRefine/releases/download/v#{version}/openrefine-mac-#{version}.dmg"
  name 'OpenRefine'
  homepage 'http://openrefine.org/'
  license :bsd

  app 'OpenRefine.app'
end
