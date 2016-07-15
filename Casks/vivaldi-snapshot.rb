cask 'vivaldi-snapshot' do
  version '1.3.537.5'
  sha256 '11c3f52b3da1c4373a482d647cf23ac34689233933d8647900312fdff0923d68'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: 'e14fdb23c1e4f2206ebea4cf538f720a6eb5ed2519a2730605814540246a4e74'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'
  license :gratis

  app 'Vivaldi.app'
end
