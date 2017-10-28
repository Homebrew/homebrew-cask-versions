cask 'opera-beta' do
  version '49.0.2725.27'
  sha256 'dfb3cbdb177190fc0cba65ac3437c43d74df992c081bd4da999bca0165104804'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  auto_updates true

  app 'Opera Beta.app'
end
