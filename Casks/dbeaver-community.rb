cask 'dbeaver-community' do
  version '3.6.6'
  sha256 'c7d4c421b4c4d3eb5d503f96ec4d3a3c54afa3d81a5f16ea8277f1821afe4726'

  url "http://dbeaver.jkiss.org/files/#{version}/dbeaver-ce-#{version}-macos.dmg"
  name 'DBeaver Community Edition'
  homepage 'http://dbeaver.jkiss.org/'
  license :oss

  app 'Dbeaver.app'
end
