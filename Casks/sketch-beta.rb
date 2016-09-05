cask 'sketch-beta' do
  version '40,33710'
  sha256 'b12b48f16300ea33d4a1e4de5e92661a74587b19dc454b6525b3ed5da3bb48c6'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: '0f9425e63ea4fa8b75dbd7bffe21f3afe459f1394e9d2790deb29cf63ca1723b'
  name 'Sketch'
  homepage 'http://bohemiancoding.com/sketch/beta/'
  license :commercial

  app 'Sketch Beta.app'
end
