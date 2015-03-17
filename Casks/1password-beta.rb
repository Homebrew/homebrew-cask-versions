cask :v1 => '1password-beta' do
  version '5.3.BETA-20'
  sha256 '9bca9ceb15a0be1dea1a35ad798d51207f0a24765acd5bed64f05098ed37e8f4'

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
