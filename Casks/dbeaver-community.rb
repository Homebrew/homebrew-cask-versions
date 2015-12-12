cask :v1 => 'dbeaver-community' do
  version '3.5.6'
  sha256 '416b55adfa76a8d31a652126ad543107866e1e233d1e162fd437591ceaf0e9df'

  url "http://dbeaver.jkiss.org/files/#{version}/dbeaver-ce-#{version}-macos.dmg"
  name 'DBeaver Community Edition'
  homepage 'http://dbeaver.jkiss.org/'
  license :oss

  app 'Dbeaver.app'
end
