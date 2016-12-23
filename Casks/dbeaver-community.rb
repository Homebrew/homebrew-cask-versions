cask 'dbeaver-community' do
  version '3.8.2'
  sha256 'c265f3ed323b1da91ffa7cf2b78e01930fa1c11623b63f60045e148d87fb949e'

  url "http://dbeaver.jkiss.org/files/#{version}/dbeaver-ce-#{version}-macos.dmg"
  name 'DBeaver Community Edition'
  homepage 'http://dbeaver.jkiss.org/'

  app 'DBeaver.app'
end
