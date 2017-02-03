cask 'opera-beta' do
  version '43.0.2442.686'
  sha256 'd55fba4e196639e1c87aee179fcc8f036089f3b003fad0f807ce04b73bb22214'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  app 'Opera Beta.app'
end
