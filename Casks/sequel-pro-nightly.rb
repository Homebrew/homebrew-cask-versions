cask :v1 => 'sequel-pro-nightly' do
  version '19a1c9f81e'
  sha256 '246f509c708232e4c52156f661d3798dbb4a57458e0ae9a943aef8cda287b153'

  url "http://nightly.sequelpro.com/builds/Sequel_Pro_r#{version}.dmg"
  name 'Sequel Pro'
  homepage 'http://nightly.sequelpro.com/'
  license :mit

  app 'Sequel Pro.app'
end
