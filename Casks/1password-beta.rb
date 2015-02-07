cask :v1 => '1password-beta' do
  version '5.3.BETA-5'
  sha256 'a03fe7f803d666890193b4b2c098a1fe553d128d7cd59d02fc81759601b41423'

  url "https://cache.agilebits.com/dist/1P/mac4/1Password-#{version}.zip"
  homepage 'https://agilebits.com/onepassword/mac'
  license :commercial

  app '1Password 5.app'
end
