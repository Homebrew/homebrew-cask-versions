cask 'whatpulse-beta' do
  version '2.7.2b1'
  sha256 '54dc8c55cdca3d2f19bcd7ea788ac6aa2c57f6c7629e82de32ee93cc6211e0ad'

  url "http://static.whatpulse.org/files/beta/whatpulse-mac-#{version}.dmg"
  name 'WhatPulse'
  homepage 'https://whatpulse.org/'

  pkg "WhatPulse #{version}.mpkg"

  uninstall pkgutil: 'com.lostdomain.whatpulse',
            quit:    'com.whatpulse.mac'
end
