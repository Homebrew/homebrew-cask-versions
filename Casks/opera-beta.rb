cask 'opera-beta' do
  version '57.0.3098.63'
  sha256 'f485cbfb1b52d03df6871a894f2fb825375d7b56ff963963b419abb962fcb40f'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  auto_updates true

  app 'Opera Beta.app'
end
