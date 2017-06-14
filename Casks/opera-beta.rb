cask 'opera-beta' do
  version '46.0.2597.19'
  sha256 '5a5ce430f3839d9704e518dff484bd020a72267afafb919e9bc3febd86bd7843'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  app 'Opera Beta.app'
end
