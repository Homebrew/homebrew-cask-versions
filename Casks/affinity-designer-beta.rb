cask :v1 => 'affinity-designer-beta' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://s3.amazonaws.com/affinity-beta/download/Affinity+Designer+Customer+Beta.dmg'
  name 'Affinity Designer'
  homepage 'https://affinity.serif.com/en-us/'
  license :commercial
  tags :vendor => 'Serif'

  app 'Affinity Designer Beta.app'
end
