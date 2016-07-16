cask 'dbeaver-community' do
  version '3.7.1'
  sha256 '2c9198cfc9519d3197c08787e1a4c4b7e4a9bac1fcf35b09fe52dc0290e72295'

  url "http://dbeaver.jkiss.org/files/#{version}/dbeaver-ce-#{version}-macos.dmg"
  name 'DBeaver Community Edition'
  homepage 'http://dbeaver.jkiss.org/'
  license :oss

  app 'Dbeaver.app'
end
