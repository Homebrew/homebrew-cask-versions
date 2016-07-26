cask 'airmail-beta' do
  version '3.0.2.379,260'
  sha256 'd747b4df458b0b880d7926b9fed9c8f66e2f51cbafd2905c38ba81547d17649f'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: '267b5bd344892fa5b793d51bc2dbeac5c0e20effdf9b3418fceb613aa2c60814'
  name 'AirMail'
  homepage 'http://airmailapp.com/beta/'
  license :commercial

  app 'AirMail Beta.app'
end
