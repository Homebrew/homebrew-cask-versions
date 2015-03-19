cask :v1 => '1password-beta' do
  version '5.3.BETA-21'
  sha256 'e0d74895fc74d13ef96b7759f830b7d84c4793b1e63ecfd6e5bb24af5e58bb16'

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
