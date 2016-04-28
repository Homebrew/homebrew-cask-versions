cask 'opera-beta' do
  version '37.0.2178.31'
  sha256 'aba0d7bc48181149f550641bc5d1261d3aa6e7e27db6542f754f9e6df2000a1c'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'http://www.opera.com/computer/beta'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Opera Beta.app'
end
