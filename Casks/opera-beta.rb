cask 'opera-beta' do
  version '40.0.2308.26'
  sha256 '5d1b5cac46e73207db1472c65422a6b8783434fc88b710746eab58c90d263bc2'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'http://www.opera.com/computer/beta'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Opera Beta.app'
end
