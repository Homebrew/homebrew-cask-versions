cask 'dbeaver-community' do
  version '3.8.1'
  sha256 'ddb2ebbf478274a6a0275730d4b092379d79b09d9ab984c26897624f3a700f93'

  url "http://dbeaver.jkiss.org/files/#{version}/dbeaver-ce-#{version}-macos.dmg"
  name 'DBeaver Community Edition'
  homepage 'http://dbeaver.jkiss.org/'

  app 'DBeaver.app'
end
