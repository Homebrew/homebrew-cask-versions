cask :v1 => 'opera-beta' do
  version '33.0.1990.11'
  sha256 '8ae4bb5a9d4c443d0061cc5373b9a16fec2e6f42bc786f32e72bed9cb9d9cb80'

  url "http://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  homepage 'http://www.opera.com/computer/beta'
  license :unknown

  app 'Opera Beta.app'
end
