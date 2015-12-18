cask 'svnx2' do
  version '2.0b2'
  sha256 'f8d5f5a57eaaeed5904669fc5cde3773a6d05578bf331264cf1eac4c7b26ae2d'

  url "https://subversion.assembla.com/svn/svnx/tags/svnX%20#{version}.dmg"
  name 'SvnX'
  appcast 'https://subversion.assembla.com/svn/svnx/rss/svnX.rss.xml',
          :sha256 => '3c2d8c6eb78d2eb8df9239fdb442b6b48838e03498a103631d5e8b627ea1af59'
  homepage 'https://subversion.assembla.com/svn/svnx/html/index.html'
  license :gratis

  app 'svnX.app'
end
