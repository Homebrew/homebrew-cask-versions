cask 'sketch-beta' do
  version '3.4.4'
  sha256 'd07b61e926a8a98f43b760fe10150aaf39ec66ad6fe370fac70fdbbb95923f1e'

  # hockeyapp.net is the official download host per the vendor homepage
  url 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/164?format=zip&avtoken=1bf9ed78e68e54974eb9cc9516a216ba82c3f245'
  homepage 'http://bohemiancoding.com/sketch/beta/'
  license :commercial

  app 'Sketch Beta.app'
end
