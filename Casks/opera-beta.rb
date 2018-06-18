cask 'opera-beta' do
  version '54.0.2952.23'
  sha256 '2dad300cae1d095ce75dad97da9ab8282503f17efddab21a62aae11cb2bdb3f4'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  auto_updates true

  app 'Opera Beta.app'
end
