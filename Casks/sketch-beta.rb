cask :v1 => 'sketch-beta' do
  version '3.3'
  sha256 '275633effb38fa6e2d963efaa8a2fa9e614638fff67db89ab34acc1e7a469a8e'

  url 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/69?format=zip&avtoken=845a800cbd0e14ef4030f826397e523b45ca8820'
  homepage 'http://bohemiancoding.com/sketch/beta/'
  license :commercial

  app 'Sketch Beta.app'
end
