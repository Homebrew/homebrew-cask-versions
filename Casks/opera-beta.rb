cask :v1 => 'opera-beta' do
  version '29.0.1795.21'
  sha256 'ffcf288fbbe993c772658ea20f5230525246e046f69a162e5eeabb6de4ecd73c'

  url "http://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  homepage 'http://www.opera.com/computer/beta'
  license :unknown

  app 'Opera Beta.app'
end
