cask 'dbeaver-community' do
  version '3.6.8'
  sha256 '47e5c6b1ce5e0b0f586f23b771e62a3530bc037423841773ee58643ce563fced'

  url "http://dbeaver.jkiss.org/files/#{version}/dbeaver-ce-#{version}-macos.dmg"
  name 'DBeaver Community Edition'
  homepage 'http://dbeaver.jkiss.org/'
  license :oss

  app 'Dbeaver.app'
end
