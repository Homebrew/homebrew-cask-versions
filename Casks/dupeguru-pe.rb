cask 'dupeguru-pe' do
  version '2.10.1'
  sha256 '5a0abebfe3932fe0df10bd301f37d884f987537f1d137fecd2263db82f0457a9'

  url "https://download.hardcoded.net/dupeguru_pe_osx_#{version.dots_to_underscores}.dmg"
  appcast 'https://www.hardcoded.net/updates/dupeguru_pe.appcast',
          checkpoint: 'dbeff4119e35f8f31699fffcf870f22410d268b614ea91ad52552a7641052e77'
  name 'dupeGuru Picture Edition'
  homepage 'https://www.hardcoded.net/dupeguru_pe/'

  app 'dupeGuru PE.app'
end
