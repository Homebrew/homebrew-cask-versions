cask 'sketch-beta' do
  version '45.2,43514'
  sha256 '57c7c315f6dbf1be57a278a243083086601cfc4747252fbf18dbeffb351f4dd3'

  # hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b',
          checkpoint: '928be2826a0131f47cbad1cdf14f877d60358c7da69f5799c58851a05568b3bb'
  name 'Sketch'
  homepage 'https://www.sketchapp.com/beta/'

  app 'Sketch Beta.app'
end
