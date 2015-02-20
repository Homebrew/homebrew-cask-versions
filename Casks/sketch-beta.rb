cask :v1 => 'sketch-beta' do
  version '3.3'
  sha256 '24324aa78755812667041afb99f5731c6c6f4d26d398b8e0ffaac7f7dc035d59'

  url 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/76?format=zip&avtoken=52bdf01b70c97772a8ed003204ac0e34529a9bc6'
  homepage 'http://bohemiancoding.com/sketch/beta/'
  license :commercial

  app 'Sketch Beta.app'
end
