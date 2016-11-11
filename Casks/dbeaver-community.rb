cask 'dbeaver-community' do
  version '3.7.8'
  sha256 '161e2ad5ead5b4d40a834471e75db32ddebc666e4e1c8f7cfe7437f39c997366'

  url "http://dbeaver.jkiss.org/files/#{version}/dbeaver-ce-#{version}-macos.dmg"
  name 'DBeaver Community Edition'
  homepage 'http://dbeaver.jkiss.org/'

  app 'DBeaver.app'
end
