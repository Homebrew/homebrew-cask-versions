cask 'dbeaver-community' do
  version '3.6.3'
  sha256 'd800e3cec09b96e74f35eaa515881f150c0bbeb87f94ce3cb56dbb89e022e99d'

  url "http://dbeaver.jkiss.org/files/#{version}/dbeaver-ce-#{version}-macos.dmg"
  name 'DBeaver Community Edition'
  homepage 'http://dbeaver.jkiss.org/'
  license :oss

  app 'Dbeaver.app'
end
