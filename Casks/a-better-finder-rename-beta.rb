cask :v1 => 'a-better-finder-rename-beta' do
  version '10'
  sha256 '669f8940ff185a3de36baa465190f06673aaff4bcfdb528498cd408c4d6caf84'

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
