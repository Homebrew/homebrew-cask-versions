cask 'sketch-beta' do
  version '43.2,39056'
  sha256 '21ec0130118a555dfb9ac3118b211e6e77dbee106ee59108459a57c95f740e89'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: '216b80e10c64ab0975f0e21cb350641ec1c2035ab3207e1a1f7cdaee7c75bf5f'
  name 'Sketch'
  homepage 'https://www.sketchapp.com/beta/'

  app 'Sketch Beta.app'
end
