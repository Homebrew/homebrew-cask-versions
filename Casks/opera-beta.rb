cask 'opera-beta' do
  version '57.0.3098.14'
  sha256 'd6bb200f9a655031ff045395b2616d7a4e2b33d1e5787e30c8fc50588b378038'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  auto_updates true

  app 'Opera Beta.app'
end
