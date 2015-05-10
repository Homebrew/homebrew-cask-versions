cask :v1 => 'gif-brewery3-beta' do
  version '3.0-b7'
  sha256 '6caba96079a4dff44c7825d5934be07b7a66cab1307771f873734673d99d1906'

  url "http://www.helloresolven.com/betas/gifbrewery/GIFBrewery-#{version}.zip"
  homepage 'http://www.helloresolven.com/betas/gifbrewery/'
  license :gratis

  app "GIFBrewery-#{version}/GIFBrewery-#{version.sub(%r{-.*},'')}-beta.app"
end
