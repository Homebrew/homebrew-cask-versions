cask :v1 => 'opera-developer' do
  version '34.0.2011.0'
  sha256 '6f2841ec279587d7e3f92912183ed428a9b9de9b80f5dd295b7b4f6011bb096b'

  url "http://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  homepage 'http://www.opera.com/developer'
  license :unknown

  app 'Opera Developer.app'
end
