cask 'sketch-beta' do
  version '44,41325'
  sha256 'd812bbfe62f6f770805abcea7c91d707f440c6b363d497889f774b444078f08e'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: '6fe6d399c792158f1b4927960455a06663126df539f7bd408af1cf043cc4bab3'
  name 'Sketch'
  homepage 'https://www.sketchapp.com/beta/'

  app 'Sketch Beta.app'
end
