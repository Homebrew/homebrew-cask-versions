cask "sketch-beta" do
  version "82,137003"
  sha256 "a401e25c0e2fec80cf1273d1a268d2ae6064f64d6f290b15d2af118c15c2ff92"

  url "https://beta-download.sketch.com/sketch-#{version.csv.first}-#{version.csv.second}.zip"
  name "Sketch"
  desc "Digital design and prototyping platform"
  homepage "https://www.sketch.com/beta"

  livecheck do
    url "https://beta-download.sketch.com/sketch-versions.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Sketch Beta.app"

  uninstall quit: "com.bohemiancoding.sketch3.beta"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.bohemiancoding.sketch3.beta.sfl*",
    "~/Library/Application Support/com.bohemiancoding.sketch3.beta",
    "~/Library/Caches/com.bohemiancoding.sketch3.beta",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.bohemiancoding.sketch3.beta",
    "~/Library/Cookies/com.bohemiancoding.sketch3.beta.binarycookies",
    "~/Library/Logs/com.bohemiancoding.sketch3.beta",
    "~/Library/Preferences/com.bohemiancoding.sketch3.beta.LSSharedFileList.plist",
    "~/Library/Preferences/com.bohemiancoding.sketch3.beta.plist",
  ]
end
