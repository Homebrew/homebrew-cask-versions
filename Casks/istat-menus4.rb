cask :v1 => 'istat-menus4' do
  version '4.22'
  sha256 '4e6873b24d18578e359b9363f02b9c98bdeda999afab1aaa8802af254ecb35b6'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/bjango/files/istatmenus4/istatmenus#{version}.zip"
  name 'iStats Menus'
  homepage 'http://bjango.com/mac/istatmenus/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'iStat Menus.app'
end
