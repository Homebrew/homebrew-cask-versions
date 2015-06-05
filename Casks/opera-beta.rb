cask :v1 => 'opera-beta' do
  version '30.0.1835.49'
  sha256 '561fa244e03e91056655248f627b28294ae4e3bb5102c5db41737c3bd0db13d3'

  url "http://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  homepage 'http://www.opera.com/computer/beta'
  license :unknown

  app 'Opera Beta.app'
end
