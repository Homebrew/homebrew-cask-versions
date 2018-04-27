cask 'opera-beta' do
  version '53.0.2907.31'
  sha256 'd2a4e9bb4b02258f3cb28e257ae81a01ace83abe8867cb86aa357baa469dac07'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  auto_updates true

  app 'Opera Beta.app'
end
