cask :v1 => 'opera-beta' do
  version '29.0.1795.41'
  sha256 'e7f013637993189ee96409fd647bbc00fa94bde544e2604c36cde230ad717063'

  url "http://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  homepage 'http://www.opera.com/computer/beta'
  license :unknown

  app 'Opera Beta.app'
end
