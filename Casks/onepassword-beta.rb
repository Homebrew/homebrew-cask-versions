cask :v1 => 'onepassword-beta' do
  version '5.1.BETA-9'
  sha256 '80cfe3b10e140948d40cd791ad8e83eaed4ff9a12c1c7432864148cb42169e05'

  url "https://cache.agilebits.com/dist/1P/mac4/1Password-#{version}.zip"
  homepage 'https://agilebits.com/onepassword/mac'
  license :closed

  app '1Password 5.app'
end
