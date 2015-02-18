cask :v1 => 'sketch-beta' do
  version '3.2.2'
  sha256 '275633effb38fa6e2d963efaa8a2fa9e614638fff67db89ab34acc1e7a469a8e'

  url 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/65?format=zip&avtoken=4cf67d09dadfaa99e993df78664101d36228f5c0'
  homepage 'http://bohemiancoding.com/sketch/beta/'
  license :unknown

  app 'Sketch Beta.app'
end
