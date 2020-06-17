cask 'opera-beta' do
  version '69.0.3686.30'
  sha256 'f4da80c1fd5327efbe3b2e8af010819241b1afa13d584983d3a360a40407d510'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  auto_updates true

  app 'Opera Beta.app'
end
