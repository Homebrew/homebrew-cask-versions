cask 'dbeaver-community' do
  version '3.6.0'
  sha256 'cb707b3acc1926b85e6be2a368470044a6c9580002ada0f8b588edaf6fabfda3'

  url "http://dbeaver.jkiss.org/files/#{version}/dbeaver-ce-#{version}-macos.dmg"
  name 'DBeaver Community Edition'
  homepage 'http://dbeaver.jkiss.org/'
  license :oss

  app 'Dbeaver.app'
end
