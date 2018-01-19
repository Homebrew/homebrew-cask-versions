cask 'opera-beta' do
  version '51.0.2830.8'
  sha256 '4dc28428af4466d7429e1ffa601f00df89baf89a4bb1775220597cb4a5578cf7'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  auto_updates true

  app 'Opera Beta.app'
end
