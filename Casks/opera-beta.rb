cask 'opera-beta' do
  version '44.0.2510.849'
  sha256 '690776a4921c142dcd77b9d607ca649652f5c42ff4568926414d5c6d47b064d9'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  app 'Opera Beta.app'
end
