cask :v1 => 'a-better-finder-rename-beta' do
  version '10'
  sha256 '6f60ce524585a016a71ec7b09536a59aa50011cb16df4235705fb7a6934d0b04'

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
