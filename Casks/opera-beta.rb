cask 'opera-beta' do
  version '40.0.2308.15'
  sha256 'a0ac8198d5f60b66e6f11ec1adc567a46db7ebd2a88de2f33876b703b0ad7b87'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'http://www.opera.com/computer/beta'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Opera Beta.app'
end
