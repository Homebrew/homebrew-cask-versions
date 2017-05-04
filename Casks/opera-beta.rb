cask 'opera-beta' do
  version '45.0.2552.632'
  sha256 '0fd1d5f61f59ef7de58f6079a44a79d17d0df47e6934d46170c31c707be49065'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  app 'Opera Beta.app'
end
