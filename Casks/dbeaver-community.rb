cask 'dbeaver-community' do
  version '3.7.2'
  sha256 'af7a45338720df715eeda20dd0e90704792a4cbe13c980cf6bf68fae08740614'

  url "http://dbeaver.jkiss.org/files/#{version}/dbeaver-ce-#{version}-macos.dmg"
  name 'DBeaver Community Edition'
  homepage 'http://dbeaver.jkiss.org/'
  license :oss

  app 'Dbeaver.app'
end
