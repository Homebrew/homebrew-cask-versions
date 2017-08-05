cask 'sketch-beta' do
  version '46,44423'
  sha256 'f5696009a52a0f42457bdc7407c3228e510cca9ef1986a61d97de58154a5ee47'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: '8b319f71384136eb40db899b89805bd02f26aa57a11d9dde50317167bb8b821d'
  name 'Sketch'
  homepage 'https://www.sketchapp.com/beta/'

  app 'Sketch Beta.app'
end
