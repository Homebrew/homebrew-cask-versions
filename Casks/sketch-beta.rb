cask 'sketch-beta' do
  version '3.4'
  sha256 'f4329183d84c8954748e9c70b26d11f187100f3bd9a62a85eb69a2e90d510d8a'

  # cloudfront.net is the official download host per the vendor homepage
  url 'https://dl0tgz6ee3upo.cloudfront.net/production/app/builds/006/587/790/original/f683c0a5877f048cbe57429c71ffe36b/Sketch_Beta.zip'
  homepage 'http://bohemiancoding.com/sketch/beta/'
  license :commercial

  app 'Sketch Beta.app'
end
