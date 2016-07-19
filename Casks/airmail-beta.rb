cask 'airmail-beta' do
  version '3.0.2.377,257'
  sha256 'cec15150c121c6550396f0c7da502420182c25d37a947bd439ae8befc4c691cd'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: '366f150b7410566be051aa9b7858d811a76d5845397b0dc96b60677e05d17aaf'
  name 'AirMail'
  homepage 'http://airmailapp.com/beta/'
  license :commercial

  app 'AirMail Beta.app'
end
