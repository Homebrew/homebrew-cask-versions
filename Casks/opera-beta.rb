cask :v1 => 'opera-beta' do
  version '30.0.1835.18'
  sha256 '7c27bfd506a5d3a9a41eabd27908344269d1d4f5a85d451d2d2ce0a9ee602993'

  url "http://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  homepage 'http://www.opera.com/computer/beta'
  license :unknown

  app 'Opera Beta.app'
end
