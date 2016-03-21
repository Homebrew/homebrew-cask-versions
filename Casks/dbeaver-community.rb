cask 'dbeaver-community' do
  version '3.6.2'
  sha256 '5186a831b639d5e717fa440093fcc967beabf5414d3a44784db7ccbfb8710ab1'

  url "http://dbeaver.jkiss.org/files/#{version}/dbeaver-ce-#{version}-macos.dmg"
  name 'DBeaver Community Edition'
  homepage 'http://dbeaver.jkiss.org/'
  license :oss

  app 'Dbeaver.app'
end
