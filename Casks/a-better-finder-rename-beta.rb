cask :v1 => 'a-better-finder-rename-beta' do
  version '10'
  sha256 '7a103b11efbd649f646fe93435cb07b6bc9b93024c177921109e327960566fda'

  url "http://www.publicspace.net/download/ABFRX#{version}.dmg"
  name 'A Better Finder Rename'
  homepage 'http://www.publicspace.net/ABetterFinderRename/version10.html'
  license :commercial

  app "A Better Finder Rename #{version.to_i}.app"
  zap :delete => [
                  "~/Library/Preferences/net.publicspace.abfr#{version}.plist",
                  "~/Library/Application Support/A Better Finder Rename #{version}",
                 ]
end
