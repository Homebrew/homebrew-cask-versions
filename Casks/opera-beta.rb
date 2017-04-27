cask 'opera-beta' do
  version '45.0.2552.626'
  sha256 '7438c1db267c33fb860e92464f98f4da18b061b59e757be2d5dca1279f01bf08'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  app 'Opera Beta.app'
end
