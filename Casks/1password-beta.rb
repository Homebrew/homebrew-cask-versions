cask :v1 => '1password-beta' do
  version '5.3.BETA-1'
  sha256 '3c4464b82297af786e469c60a5425eae1eb363a8aafb8942157137a8a75b2e98'

  url "https://cache.agilebits.com/dist/1P/mac4/1Password-#{version}.zip"
  homepage 'https://agilebits.com/onepassword/mac'
  license :closed

  app '1Password 5.app'
end
