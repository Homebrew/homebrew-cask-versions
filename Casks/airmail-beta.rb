cask 'airmail-beta' do
  version '3.3.3.446,311'
  sha256 'bdb180dc5005ddfc5d7158b947446c5ce4a6191d6407775e9a9a9b294f3f92b6'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: 'fd3d80f29205536425a531eec669754febe2fc366bce3bd9f7f30fbfa184e1f3'
  name 'Airmail'
  homepage 'http://airmailapp.com/beta/'

  app 'Airmail Beta.app'

  uninstall quit: 'it.bloop.airmail.beta11'
end
