cask 'multimarkdown-composer-beta' do
  version '3.0b51'
  sha256 'd1a6fa5a27b675d624d05509f43b8f6dc15ae9ff78985ea8df18f9988249cc23'

  # files.fletcherpenney.net.s3.amazonaws.com was verified as official when first introduced to the cask
  url "http://files.fletcherpenney.net.s3.amazonaws.com/MultiMarkdown%20Composer%20%28Non-Sandboxed%29-#{version}.zip"
  name 'MultiMarkdown Composer'
  homepage 'http://support.multimarkdown.com/kb/future-plans/where-can-i-download-the-beta-for-v3'

  app 'MultiMarkdown Composer.app'
end
