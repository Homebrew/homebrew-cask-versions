cask :v1 => 'sketch-beta' do
  version '3.2.1'
  sha256 '75be5326ae7c6d639effb112c5a4f7c93e55e786d7c807a01e80a9479455699c'

  url 'https://rink.hockeyapp.net/api/2/apps/0172d48cceec171249a8d850fb16276b/app_versions/64?format=zip&avtoken=772f3a4aa948c0f0ffe925c35a81648c8f40d69d'
  homepage 'http://bohemiancoding.com/sketch/beta/'
  license :unknown

  app 'Sketch Beta.app'
end
