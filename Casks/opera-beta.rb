cask :v1 => 'opera-beta' do
  version '29.0.1795.30'
  sha256 '6ef44a4236ad4f29bfc2c66bc8b542fb583fb50fb7c267fbd4777ccaca59adcb'

  url "http://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  homepage 'http://www.opera.com/computer/beta'
  license :unknown

  app 'Opera Beta.app'
end
