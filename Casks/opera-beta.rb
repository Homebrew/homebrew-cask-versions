cask 'opera-beta' do
  version '48.0.2685.7'
  sha256 '8e814693c61d747b92ad13714cf545db18a4657c25298aabe4cde789c574996c'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  app 'Opera Beta.app'
end
