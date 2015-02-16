cask :v1 => '1password-beta' do
  version '5.3.BETA-11'
  sha256 'caf23b55ce69f8f40cd1a4f75a6b943af171465421c01b162bb1631a57f6607e'

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
