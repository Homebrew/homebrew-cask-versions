cask 'sketch-beta' do
  version '46.2,44496'
  sha256 '09e8ff416bf7eb7601478902a6143b3c23c2ffa920afb2f4788f2d30504d12c9'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: 'cf3c2eb8f5fb7eea1b5b74d6e3414651e5ff41a9f808aadaba39f536cd7f397f'
  name 'Sketch'
  homepage 'https://www.sketchapp.com/beta/'

  app 'Sketch Beta.app'
end
