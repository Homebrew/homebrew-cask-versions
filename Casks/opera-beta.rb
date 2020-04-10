cask 'opera-beta' do
  version '68.0.3618.36'
  sha256 'f7968319b31e67b359f499a37dc6e443cb24522751ad3345f182f3ee9be97ae0'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  auto_updates true

  app 'Opera Beta.app'
end
