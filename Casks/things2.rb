cask 'things2' do
  version '2.8.14'
  sha256 '984d643e0ecaafcddf38864f3ff3ad9885cac9509670e538b9b0ded1c15e1217'

  # cachefly.net/things was verified as official when first introduced to the cask
  url "https://culturedcode.cachefly.net/things/Things_#{version}.zip"
  name 'Things'
  homepage 'https://culturedcode.com/things/'

  app 'Things.app'

  zap trash: [
               '~/Library/Preferences/com.culturedcode.things.plist',
             ]
end
