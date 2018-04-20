cask 'telegram-alpha' do
  version '3.8.3-122643,990'
  sha256 'd7c3cda8712e36d81bc18e9ec907416cb3f81f3ac1bc3edb1b0cf27663aefe13'

  # hockeyapp.net/api/2/apps/6ed2ac3049e1407387c2f1ffcb74e81f was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/6ed2ac3049e1407387c2f1ffcb74e81f/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/6ed2ac3049e1407387c2f1ffcb74e81f',
          checkpoint: 'd80f2e278ca49b67f8bbb025d41ba572552cf0858bb2fe2dfd68d904e98860f8'
  name 'Telegram for macOS'
  name 'Telegram Swift'
  homepage 'https://macos.telegram.org/'

  auto_updates true
  conflicts_with cask: 'telegram'
  depends_on macos: '>= :yosemite'

  app 'Telegram.app'
end
