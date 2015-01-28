cask :v1 => '1password-beta' do
  version '5.3.BETA-2'
  sha256 'fb4273136def0a00cad2d31dc93ae1dce52d2fabfd789590d11bea0b3e596430'

  url "https://cache.agilebits.com/dist/1P/mac4/1Password-#{version}.zip"
  homepage 'https://agilebits.com/onepassword/mac'
  license :commercial

  app '1Password 5.app'
end
