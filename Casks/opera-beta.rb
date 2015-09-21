cask :v1 => 'opera-beta' do
  version '32.0.1948.19'
  sha256 '54241ca897aca1f2578eddbdc2394f8a83b76777e52dbcc7eae2468f32a399af'

  url "http://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  homepage 'http://www.opera.com/computer/beta'
  license :unknown

  app 'Opera Beta.app'
end
