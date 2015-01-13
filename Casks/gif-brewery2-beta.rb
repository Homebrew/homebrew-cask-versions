cask :v1 => 'gif-brewery2-beta' do
  version '2.3.5-beta2'
  sha256 '9e3d066a5e71fbc42c3a02f7697d925caac81ce417e88e24c211b96814de9038'

  url "http://www.helloresolven.com/betas/gifbrewery/GIFBrewery-#{version}.zip"
  homepage 'http://www.helloresolven.com/betas/gifbrewery/'
  license :gratis

  app "GIFBrewery-#{version}/GIF Brewery-#{version}.app"
end
