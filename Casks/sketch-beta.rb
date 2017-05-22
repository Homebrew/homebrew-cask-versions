cask 'sketch-beta' do
  version '44.1,41454'
  sha256 '552fc1ecd00ea75af3742dc36786a1b3ebe36ebf45637d54e67e02e94413a24d'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: '4adc022456901074ec346158ad8ce074fcb2cbaa1075ab7a15ad533877b37ec9'
  name 'Sketch'
  homepage 'https://www.sketchapp.com/beta/'

  app 'Sketch Beta.app'
end
