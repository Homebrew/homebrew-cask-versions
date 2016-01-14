cask 'opera-beta' do
  version '35.0.2066.23'
  sha256 '6f20c576e2920b8e821cea4efd0138966ae34d17fbf51bae9e6cbc2d3c2941e9'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name "Opera Beta"
  homepage 'http://www.opera.com/computer/beta'
  license :unknown

  app 'Opera Beta.app'
end
