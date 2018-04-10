cask 'whatpulse-beta' do
  version '2.8.2b3'
  sha256 'f9873e56bc6cb4becaaaf209da803b98423384869f372b62104b0e16bcecd8ea'

  url "https://static.whatpulse.org/files/beta/whatpulse-mac-#{version}.dmg"
  name 'WhatPulse'
  homepage 'https://whatpulse.org/'

  pkg "WhatPulse #{version}.mpkg"

  uninstall pkgutil: 'com.lostdomain.whatpulse',
            quit:    'com.whatpulse.mac'
end
