cask :v1 => 'pangu7' do
  version '1.2'
  sha256 'ed14ff31a4956506fce03ebccb155b9136fedf0805d5b8bb4018a629d1f13c51'

  # 25pp is the official download host per the vendor homepage
  url "http://dl.pangu.25pp.com/jb/Pangu_v#{version}.dmg"
  homepage 'http://en.7.pangu.io/'
  license :unknown

  app 'pangu.app'
end
