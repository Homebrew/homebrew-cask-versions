cask 'opera-beta' do
  version '35.0.2066.10'
  sha256 'dd83f85e764da6e64997ead057b7e3af1e848bf6b2bfc2b188a49c9a04d2c081'

  url "http://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  homepage 'http://www.opera.com/computer/beta'
  license :unknown

  app 'Opera Beta.app'
end
