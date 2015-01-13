cask :v1 => 'gif-brewery3-beta' do
  version '3.0-b3'
  sha256 'b017f00a6a8f3a563ae74d405d2140d2a5ea1a438c482a4ce51716785d2df254'

  url "http://www.helloresolven.com/betas/gifbrewery/GIFBrewery-#{version}.zip"
  homepage 'http://www.helloresolven.com/betas/gifbrewery/'
  license :gratis

  app "GIFBrewery-#{version}/GIFBrewery-#{version.sub(%r{-.*},'')}-beta.app"
end
