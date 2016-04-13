cask 'opera-developer' do
  version '38.0.2198.0'
  sha256 'f1ddf2ca2b1a9d8ab9cdef9e6c376dd7fe3351e4728adfa62b5ddf7c1745a5fd'

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name 'Opera Developer'
  homepage 'http://www.opera.com/developer'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Opera Developer.app'
end
