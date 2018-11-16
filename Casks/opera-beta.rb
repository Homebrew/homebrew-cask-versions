cask 'opera-beta' do
  version '57.0.3098.36'
  sha256 '57c3d39ba63b24c1bfb77db809365d4865539706ea7913ca22abf3859c8acd65'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  auto_updates true

  app 'Opera Beta.app'
end
