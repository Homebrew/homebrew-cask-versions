cask :v1 => 'opera-beta' do
  version '31.0.1889.98'
  sha256 '1a2da3e314dbd41d20a1390f9654b6edfab5cd6060120233cfa85feb674a3543'

  url "http://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  homepage 'http://www.opera.com/computer/beta'
  license :unknown

  app 'Opera Beta.app'
end
