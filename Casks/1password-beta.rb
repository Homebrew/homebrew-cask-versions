cask :v1 => '1password-beta' do
  version '5.3.BETA-3'
  sha256 '9e2837a774f772cc33e54cbe4e664739c75cc6bd25483bacfec58ad7c0d3f53e'

  url "https://cache.agilebits.com/dist/1P/mac4/1Password-#{version}.zip"
  homepage 'https://agilebits.com/onepassword/mac'
  license :commercial

  app '1Password 5.app'
end
