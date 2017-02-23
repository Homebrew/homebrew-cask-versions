cask 'sketch-beta' do
  version '43,38917'
  sha256 'cb611bc3b72ef44b8132c5dca441d4c357b226b976abd8ed215f943bf20810da'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: '3084bc784d632deb4d7ec9e6a020ffebf4b53ee69265f7d94377771e213a999a'
  name 'Sketch'
  homepage 'https://www.sketchapp.com/beta/'

  app 'Sketch Beta.app'
end
