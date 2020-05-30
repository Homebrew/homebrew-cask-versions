cask 'opera-beta' do
  version '69.0.3686.12'
  sha256 'b416999828757de001c3635e7ff733555182c05433cd5c66d6aeab955c0d1e1a'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  auto_updates true

  app 'Opera Beta.app'
end
