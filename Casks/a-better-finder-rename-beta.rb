cask :v1 => 'a-better-finder-rename-beta' do
  version '10'
  sha256 'df4208eb01c25434b5c93c65ae82c12b2bab893a63d5c286f8c89cf4ae7b7137'

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
