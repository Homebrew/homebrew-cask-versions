cask 'opera-beta' do
  version '43.0.2442.21'
  sha256 '3b61835f21b3eb18e765e98b9641416144199464480ac3eb93118635410d7399'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  app 'Opera Beta.app'
end
