cask 'dbeaver-community' do
  version '3.8.0'
  sha256 'f06354dcfd9a80943ed948eeefdc3f34dc3c2d547c5190b27edb2397958a3d88'

  url "http://dbeaver.jkiss.org/files/#{version}/dbeaver-ce-#{version}-macos.dmg"
  name 'DBeaver Community Edition'
  homepage 'http://dbeaver.jkiss.org/'

  app 'DBeaver.app'
end
