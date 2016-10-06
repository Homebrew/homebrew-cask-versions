cask 'sketch-beta' do
  version '40.2,33825'
  sha256 '790d92cf8ad07f079a60b0c011476b82768615c695994bac8154b57dbfedfd67'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: '5de61e3ed92e4cf25571cbe7a2c2c7650473ddd11f5284b5b173aea7027469c1'
  name 'Sketch'
  homepage 'http://bohemiancoding.com/sketch/beta/'
  license :commercial

  app 'Sketch Beta.app'
end
