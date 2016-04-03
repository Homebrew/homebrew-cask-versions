cask 'sketch-beta' do
  version '3.7,28138'
  sha256 '8c20063058983568d704ff7bf0fd6f19dd5681280b24a5abb5058365e9d9bb7d'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: '170f9836befea0a7e05a06919bf5247bb857c1d4f3437d6751465227b2abdf84'
  name 'Sketch'
  homepage 'http://bohemiancoding.com/sketch/beta/'
  license :commercial

  app 'Sketch Beta.app'
end
