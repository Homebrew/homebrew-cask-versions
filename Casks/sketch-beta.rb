cask 'sketch-beta' do
  version '42,36780'
  sha256 '2b9252e428fc9f566fe8c6ca18d262572de0c1acbd32d34fa93caada8aaa59e4'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: '8f6fa74c0b94823b5981bf2853e53d17f5e816a55de353cccd1d1e1f9953d071'
  name 'Sketch'
  homepage 'https://www.sketchapp.com/beta/'

  app 'Sketch Beta.app'
end
