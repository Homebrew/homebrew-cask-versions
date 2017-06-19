cask 'sketch-beta' do
  version '45,43458'
  sha256 'b0494b36bd63bfda5467d488f85dc0acec4a141b0cf8da676ef7d27b6be86c73'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: '35c1c2ac7e2c74d2d972ab44717134a85372fb7f7579f7897c15dbfe52a5d9c2'
  name 'Sketch'
  homepage 'https://www.sketchapp.com/beta/'

  app 'Sketch Beta.app'
end
