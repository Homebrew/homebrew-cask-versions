cask 'opera-beta' do
  version '47.0.2631.13'
  sha256 '2a7aee695a29ed2a69ac626f4f9f26ce335adc4c32ef5fff8a6dc8f4f943d9ef'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  app 'Opera Beta.app'
end
