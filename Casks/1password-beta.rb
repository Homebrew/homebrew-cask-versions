cask :v1 => '1password-beta' do
  version '5.3.BETA-4'
  sha256 'bb2c2ca63869e916e59bb71e38847090bdae471188cce6f85e644d2bd52dae1d'

  url "https://cache.agilebits.com/dist/1P/mac4/1Password-#{version}.zip"
  homepage 'https://agilebits.com/onepassword/mac'
  license :commercial

  app '1Password 5.app'
end
