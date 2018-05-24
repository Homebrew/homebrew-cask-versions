cask 'opera-beta' do
  version '54.0.2952.8'
  sha256 'e56b960903880da13702de74de7d9bf87ff24f6fb376c3360332b2bca8d263ab'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  auto_updates true

  app 'Opera Beta.app'
end
