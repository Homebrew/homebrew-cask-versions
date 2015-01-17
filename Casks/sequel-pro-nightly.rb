cask :v1 => 'sequel-pro-nightly' do
  version '36c6eeb3a2'
  sha256 '3a74e3c37fec5118a3576c8fa00fce2962b0b14335a2e71f4aa35b064578a6c3'

  url 'http://nightly.sequelpro.com/builds/Sequel_Pro_r36c6eeb3a2.dmg'
  homepage 'http://nightly.sequelpro.com/'
  license :unknown

  app 'Sequel Pro.app'
end
