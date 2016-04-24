cask 'opera-developer' do
  version '38.0.2205.0'
  sha256 'f3ca79af8d5de13046addf0480df3436768e3c6ddc781d071e194a4d1c431bbe'

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name 'Opera Developer'
  homepage 'http://www.opera.com/developer'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Opera Developer.app'
end
