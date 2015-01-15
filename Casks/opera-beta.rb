cask :v1 => 'opera-beta' do
  version '27.0.1689.44'
  sha256 'a07580830e9b772ef6644d34c84b260fb17ea592f50b6d4a36fa3ffa6bdc4b0b'

  url "http://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  homepage 'http://www.opera.com/computer/beta'
  license :unknown

  app 'Opera Beta.app'
end
