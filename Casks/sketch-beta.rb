cask 'sketch-beta' do
  version '40,33729'
  sha256 '0691629462907a2f63a4cd8b86228e3fc9136388feca5611f1bd3eb7f2d99899'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: '6e8bf05b9774b9ec8b9ab63a14de8550cdd5473d86e4f2223e3425fb539fb72d'
  name 'Sketch'
  homepage 'http://bohemiancoding.com/sketch/beta/'
  license :commercial

  app 'Sketch Beta.app'
end
