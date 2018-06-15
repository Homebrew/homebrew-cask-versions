cask 'waltr1' do
  version '1.7.3,1480013435'
  sha256 '729129129346228fc5d94af6993da2e32e98158f3978ac16b4d5f82b0e83db8b'

  # devmate.com/com.softorino.Waltr was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.softorino.Waltr/#{version.before_comma}/#{version.after_comma}/WALTR-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.softorino.Waltr.xml'
  name 'WALTR'
  homepage 'https://softorino.com/waltr/'

  app 'Waltr.app'
end
