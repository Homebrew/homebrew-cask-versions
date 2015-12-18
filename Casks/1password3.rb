cask '1password3' do
  version '3.8.22'
  sha256 '3afd75f1bddf791dc7dbc9a7d92ab6eb91ee891407d750cedb7b5aff5fe8bf17'

  url "https://d13itkw33a7sus.cloudfront.net/dist/1P/mac/1Password-#{version}.zip"
  name '1Password'
  homepage 'https://agilebits.com/onepassword'
  license :commercial

  app '1Password.app'
  
  zap :delete => [
                  '~/Library/Application Scripts/2BUA8C4S2C.com.agilebits.onepassword-osx-helper',
                  '~/Library/Containers/2BUA8C4S2C.com.agilebits.onepassword-osx-helper',
                  '~/Library/Containers/com.agilebits.onepassword-osx',
                  '~/Library/Group Containers/2BUA8C4S2C.com.agilebits',
                 ]
end
