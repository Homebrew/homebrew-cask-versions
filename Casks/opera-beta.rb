cask :v1 => 'opera-beta' do
  version '31.0.1889.16'
  sha256 '867191b36b184d1957538eef5f9d39df57e117740b1462f67f64ac7e921b3f80'

  url "http://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  homepage 'http://www.opera.com/computer/beta'
  license :unknown

  app 'Opera Beta.app'
end
