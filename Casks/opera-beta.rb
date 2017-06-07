cask 'opera-beta' do
  version '46.0.2597.14'
  sha256 'eff0e06b98ff8829a6c9d059c56a2c7948997d7a3c9efc9f100b363583df83c1'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  app 'Opera Beta.app'
end
