cask 'airmail-beta' do
  version '3.2.3.420,292'
  sha256 '5847fae6ddbdaff92822f5bc232f46470981f523c6ddfbc580faa13479ffd66b'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: 'aa310b7986163dd4effec2a64eddff2c9e12fe67a00a002ef3aa233a6b9bf7f8'
  name 'Airmail'
  homepage 'http://airmailapp.com/beta/'

  app 'Airmail Beta.app'
end
