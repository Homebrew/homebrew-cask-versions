cask 'dbeaver-community' do
  version '3.6.10'
  sha256 '9dbdf3cacdbdbc705ddfbb3de462d526144aeac7300ea7afcdcb3250d8ce502d'

  url "http://dbeaver.jkiss.org/files/#{version}/dbeaver-ce-#{version}-macos.dmg"
  name 'DBeaver Community Edition'
  homepage 'http://dbeaver.jkiss.org/'
  license :oss

  app 'Dbeaver.app'
end
