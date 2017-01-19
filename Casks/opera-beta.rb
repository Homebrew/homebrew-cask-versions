cask 'opera-beta' do
  version '43.0.2442.52'
  sha256 '7d6cf4b1cd49a926df87930b750fa1052eec0818a7ef70584511e68e1dd5124f'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  app 'Opera Beta.app'
end
