cask :v1 => '1password-beta' do
  version '5.3.BETA-15'
  sha256 'be4b1a2f69c4c3586f5817577d68c7e431c3ccc2fa519df94e160193f21b7000'

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
