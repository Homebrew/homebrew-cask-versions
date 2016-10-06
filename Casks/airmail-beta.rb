cask 'airmail-beta' do
  version '3.1.391,269'
  sha256 '3aab04a0664eecfc01e3f89f20f77659c230275199d0d4920de3b3dfa2bdf197'

  # hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04/app_versions/#{version.after_comma}?format=zip&"
  appcast 'https://rink.hockeyapp.net/api/2/apps/84be85c3331ee1d222fd7f0b59e41b04',
          checkpoint: '462a02ccee368dae5324495bf3f5cb7ce9d9146b0c9ef4744638878e16beef73'
  name 'Airmail'
  homepage 'http://airmailapp.com/beta/'

  app 'Airmail Beta.app'
end
