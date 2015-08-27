cask :v1 => 'sequel-pro-nightly' do
  version 'r4552d5daa1'
  sha256 '5ecd09439a00e1c1d52dde936d160fa2123f0aee426aa2d61aad62344e32e14e'

  url "http://nightly.sequelpro.com/builds/Sequel_Pro_#{version}.dmg"
  name 'Sequel Pro'
  homepage 'http://nightly.sequelpro.com/'
  license :mit

  app 'Sequel Pro.app'
end
