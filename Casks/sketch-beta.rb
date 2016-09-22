cask 'sketch-beta' do
  version '40,33762'
  sha256 '9d9a5db1d58f08ae96fc923fbe0f48c1102da86140919f69d61875d349fa0933'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: '3b37b53a53766d86213428bd5277eefe8d260020eba3b420749c967d9f016202'
  name 'Sketch'
  homepage 'http://bohemiancoding.com/sketch/beta/'
  license :commercial

  app 'Sketch Beta.app'
end
