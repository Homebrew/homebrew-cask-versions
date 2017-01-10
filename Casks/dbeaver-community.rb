cask 'dbeaver-community' do
  version '3.8.3'
  sha256 'e10673c476b9f0849f2fb2d7f77a644922a7bd351cc2897f4bfa7561611b1b56'

  url "http://dbeaver.jkiss.org/files/#{version}/dbeaver-ce-#{version}-macos.dmg"
  name 'DBeaver Community Edition'
  homepage 'http://dbeaver.jkiss.org/'

  app 'DBeaver.app'
end
