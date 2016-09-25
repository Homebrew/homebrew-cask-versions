cask 'multimarkdown-composer' do
  version '3.0b46'
  sha256 '673570ff77487dddbe19751a1ab83a2c77eeaa9e3242ac88eefe7b755bf4d636'

  # files.fletcherpenney.net.s3.amazonaws.com was verified as official when first introduced to the cask
  url "http://files.fletcherpenney.net.s3.amazonaws.com/MultiMarkdown%20Composer%20%28Non-Sandboxed%29-#{version}.zip"
  name 'MultiMarkdown Composer'
  homepage 'http://support.multimarkdown.com/kb/future-plans/where-can-i-download-the-beta-for-v3'
  license :commercial

  app 'MultiMarkdown Composer.app'
end
