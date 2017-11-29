cask 'opera-beta' do
  version '50.0.2762.18'
  sha256 'a8e25b6b5ad239cde68958ba1ba4cf4140a03351fca147675e6f80e2820b5453'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  auto_updates true

  app 'Opera Beta.app'
end
