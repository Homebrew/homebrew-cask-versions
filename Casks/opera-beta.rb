cask 'opera-beta' do
  version '49.0.2725.12'
  sha256 'efe99d6372ffe95ad66cd4092154fcca4edd6507fbcf0af13e94c6377cfd163f'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  auto_updates true

  app 'Opera Beta.app'
end
