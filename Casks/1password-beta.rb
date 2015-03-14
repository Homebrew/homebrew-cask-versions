cask :v1 => '1password-beta' do
  version '5.3.BETA-19'
  sha256 '7250e41e4e057cf99828da781576e2f1a21017843fefe97f913dc18fff01d18b'

  url "https://cache.agilebits.com/dist/1P/mac4/1Password-#{version}.zip"
  name '1Password'
  homepage 'https://agilebits.com/onepassword/mac'
  license :commercial

  app '1Password 5.app'

  zap :delete => [
                    '~/Library/Application Scripts/2BUA8C4S2C.com.agilebits.onepassword-osx-helper',
                    '~/Library/Containers/2BUA8C4S2C.com.agilebits.onepassword-osx-helper',
                    '~/Library/Containers/com.agilebits.onepassword-osx',
                    '~/Library/Group Containers/2BUA8C4S2C.com.agilebits',
                   ]
end
