cask 'sketch-beta' do
  version '48,47110'
  sha256 'b241d6a79dd9ef77516b74e3e3efb6e77e6d8ef98f32f195628e0a39f90421ab'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: 'e4d650dfd2599b27cde72385d162eefde26c81d372934cf10c3939d01c57cd8f'
  name 'Sketch'
  homepage 'https://www.sketchapp.com/beta/'

  app 'Sketch Beta.app'
end
