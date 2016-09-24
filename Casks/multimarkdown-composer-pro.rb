cask 'multimarkdown-composer-pro' do
  version '3.0b46'
  sha256 '9eee8954e42d705b8a3433ef07ff52394b7e910c02ad0df9b4fa1dbfadee4b96'

  # amazonaws.com was verified as official when first introduced to the cask
  url "http://files.fletcherpenney.net.s3.amazonaws.com/MultiMarkdown%20Composer%20Pro%20%28Beta%29-#{version}.zip"
  name 'MultiMarkdown Composer Pro (Beta)'
  homepage 'http://multimarkdown.com'
  license :commercial

  app 'MultiMarkdown Composer Pro (Beta).app'
end
