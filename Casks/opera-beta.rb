cask 'opera-beta' do
  version '46.0.2597.11'
  sha256 '52777839a6aea5180bd3236bff1c9fd5be8c7410987a9734532c229e7b2e6ade'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  app 'Opera Beta.app'
end
