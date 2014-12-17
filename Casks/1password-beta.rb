cask :v1 => '1password-beta' do
  version '5.1.BETA-19'
  sha256 'd137eeab5a91c7e3e26d69543b2e4348765288336741b42168781a3d7f723a64'

  url "https://cache.agilebits.com/dist/1P/mac4/1Password-#{version}.zip"
  homepage 'https://agilebits.com/onepassword/mac'
  license :closed

  app '1Password 5.app'
end
