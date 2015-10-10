cask :v1 => 'istat-menus3' do
  version '3.27'
  sha256 '31b613aad5b4228087696f0c928a6018f8606534acbb3917e55635c51073bdf6'

  # amazonaws.com is the official download host per the vendor homepage
  url "http://s3.amazonaws.com/bjango/files/istatmenus3/istatmenus#{version}.zip"
  name 'iStats Menus'
  homepage 'http://bjango.com/mac/istatmenus/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'iStat Menus.app'
end
