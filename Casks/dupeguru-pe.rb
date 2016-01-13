cask 'dupeguru-pe' do
  version '2.10.1'
  sha256 '5a0abebfe3932fe0df10bd301f37d884f987537f1d137fecd2263db82f0457a9'

  url "https://download.hardcoded.net/dupeguru_pe_osx_#{version.dots_to_underscores}.dmg"
  appcast 'https://www.hardcoded.net/updates/dupeguru_pe.appcast',
          :checkpoint => 'e4231cd13e1f317f9e7dce07d2ace620e1be324568a74c08790b0dd4cf96f66a'
  name 'dupeGuru Picture Edition'
  homepage 'https://www.hardcoded.net/dupeguru_pe/'
  license :bsd

  app 'dupeGuru PE.app'
end
