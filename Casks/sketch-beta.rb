cask 'sketch-beta' do
  version '45.1,43502'
  sha256 '40e293f422ded320f646cb3d32cfe87e7f939204090039ee3fc878e5a1084bbc'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: '60ad4343ece1f9552acd4e85c6c02ac2821068c9867f56cdf2762cee80fe0653'
  name 'Sketch'
  homepage 'https://www.sketchapp.com/beta/'

  app 'Sketch Beta.app'
end
