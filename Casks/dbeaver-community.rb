cask 'dbeaver-community' do
  version '3.6.9'
  sha256 '5ccaea209f4c10ea241f7f00bb9e342fd3eca4b5c393299c147b0c9fa0c83311'

  url "http://dbeaver.jkiss.org/files/#{version}/dbeaver-ce-#{version}-macos.dmg"
  name 'DBeaver Community Edition'
  homepage 'http://dbeaver.jkiss.org/'
  license :oss

  app 'Dbeaver.app'
end
