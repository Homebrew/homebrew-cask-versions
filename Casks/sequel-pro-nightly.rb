cask 'sequel-pro-nightly' do
  version 'baa9d677f2'
  sha256 '8d64c512b737642eea0383f2c83f48e5c877babfade0e7bf78048a653e79bf9b'

  url "https://sequelpro.com/builds/Sequel-Pro-Build-#{version}.zip"
  name 'Sequel Pro'
  homepage 'https://sequelpro.com/test-builds'

  depends_on macos: '>= :leopard'

  app 'Sequel Pro.app'

  zap delete: '~/Library/Application Support/Sequel Pro/Data'
end
