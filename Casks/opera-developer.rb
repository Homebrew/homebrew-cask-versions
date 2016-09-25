cask 'opera-developer' do
  version '41.0.2349.0'
  sha256 '3c3268336b5fe7ca55d7d58e42c4a52d234c4ebec97bbca0b0d79871cc0a950f'

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name 'Opera Developer'
  homepage 'http://www.opera.com/developer'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Opera Developer.app'
end
