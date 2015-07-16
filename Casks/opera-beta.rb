cask :v1 => 'opera-beta' do
  version '31.0.1889.74'
  sha256 'd5ba154046c0a39b51c0ef63363193c6c45d0d6c26ef75dd1af6ad0b41e2a9e7'

  url "http://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  homepage 'http://www.opera.com/computer/beta'
  license :unknown

  app 'Opera Beta.app'
end
