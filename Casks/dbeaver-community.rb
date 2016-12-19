cask 'dbeaver-community' do
  version '3.8.2'
  sha256 '5e169b4fee723f8a31515eb2ad03b79e57bf0a499c686745e54e08cde51231db'

  url "http://dbeaver.jkiss.org/files/#{version}/dbeaver-ce-#{version}-macos.dmg"
  name 'DBeaver Community Edition'
  homepage 'http://dbeaver.jkiss.org/'

  app 'DBeaver.app'
end
