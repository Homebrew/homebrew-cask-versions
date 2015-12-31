cask 'dbeaver-community' do
  version '3.5.8'
  sha256 '26442389e8a2e96294fd9a4ea5a2f6a342639757d77ff33a39f0e82e426c7b69'

  url "http://dbeaver.jkiss.org/files/#{version}/dbeaver-ce-#{version}-macos.dmg"
  name 'DBeaver Community Edition'
  homepage 'http://dbeaver.jkiss.org/'
  license :oss

  app 'Dbeaver.app'
end
