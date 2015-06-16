cask :v1 => '1password-beta' do
  version '5.4.BETA-17'
  sha256 'edec7586ea53308b027249aa56f9661c27c70767643fcefa15354a881090d064'

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
