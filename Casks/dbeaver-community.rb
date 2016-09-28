cask 'dbeaver-community' do
  version '3.7.5'
  sha256 '7f33cc34cc00f214954d43205fe1812f4b64fc17888c8474cda93417c556f327'

  url "http://dbeaver.jkiss.org/files/#{version}/dbeaver-ce-#{version}-macos.dmg"
  name 'DBeaver Community Edition'
  homepage 'http://dbeaver.jkiss.org/'
  license :oss

  app 'Dbeaver.app'
end
