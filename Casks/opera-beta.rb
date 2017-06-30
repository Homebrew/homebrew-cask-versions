cask 'opera-beta' do
  version '47.0.2631.7'
  sha256 'c7c4791f6f425ebd9c0af43eac94760dc3747178ec1768cfd817ba02bf24eff6'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  app 'Opera Beta.app'
end
