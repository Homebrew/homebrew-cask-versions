cask :v1 => '1password-beta' do
  version '5.1.BETA-34'
  sha256 '3ff0a649c84d4c186c3905073a46f0751a04595db7cf53e13222086281b1e83a'

  url "https://cache.agilebits.com/dist/1P/mac4/1Password-#{version}.zip"
  homepage 'https://agilebits.com/onepassword/mac'
  license :closed

  app '1Password 5.app'
end
