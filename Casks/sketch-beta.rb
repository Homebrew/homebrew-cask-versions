cask 'sketch-beta' do
  version '39,31504'
  sha256 'fe2a4baa6a1cf5e70b624ea3116f2128ae1b5f33a1123fd7850bdb7b84bfd1b0'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: '2f639fd82917b01abfb2da5975510a4ef972fcd37733c7cd38605c213defcdc8'
  name 'Sketch'
  homepage 'http://bohemiancoding.com/sketch/beta/'
  license :commercial

  app 'Sketch Beta.app'
end
