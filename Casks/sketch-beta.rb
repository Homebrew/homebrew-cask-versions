cask 'sketch-beta' do
  version '3.7.1,28208'
  sha256 '51ee279fcd2edb2ad6bbc2f5a124c0c39b3039f05ab0a233ec4bab0f1ba056ef'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: '723f18bdd7f8c69b8d9a324392956dab9a8c6bc756f6375dfb5a30e0a53d0507'
  name 'Sketch'
  homepage 'http://bohemiancoding.com/sketch/beta/'
  license :commercial

  app 'Sketch Beta.app'
end
