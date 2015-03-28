cask :v1 => 'opera-beta' do
  version '29.0.1795.26'
  sha256 '4a62e04697b18385f8ed7dbf5bf60a253087beaca75cf47beda99ed248b37ce1'

  url "http://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  homepage 'http://www.opera.com/computer/beta'
  license :unknown

  app 'Opera Beta.app'
end
