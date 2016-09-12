cask 'dbeaver-community' do
  version '3.7.4'
  sha256 'ad1dc5bd003bd02d1edd1d24e35b12cb169979cc0a660d5a5b107a42dfeca786'

  url "http://dbeaver.jkiss.org/files/#{version}/dbeaver-ce-#{version}-macos.dmg"
  name 'DBeaver Community Edition'
  homepage 'http://dbeaver.jkiss.org/'
  license :oss

  app 'Dbeaver.app'
end
