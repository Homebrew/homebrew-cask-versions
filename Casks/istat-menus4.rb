cask :v1 => 'istat-menus4' do
  version '4.22'
  sha256 '4e6873b24d18578e359b9363f02b9c98bdeda999afab1aaa8802af254ecb35b6'

  url "https://s3.amazonaws.com/bjango/files/istatmenus4/istatmenus#{version}.zip"
  homepage 'http://bjango.com/mac/istatmenus/'
  license :unknown

  app 'iStat Menus.app'
end
