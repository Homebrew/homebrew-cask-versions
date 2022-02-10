cask "sourcetree-beta" do
  version "4.1.6b8_242"
  sha256 "9bb113a6af8d62b79b68a580d8973a71088c0bcd91be03dbdcb0a899fefc185c"

  url "https://product-downloads.atlassian.com/software/sourcetree/beta/Sourcetree_#{version}.zip",
      verified: "product-downloads.atlassian.com/software/sourcetree/"
  appcast "https://product-downloads.atlassian.com/software/sourcetree/Appcast/SparkleAppcastBeta.xml"
  name "Atlassian Sourctree"
  homepage "https://www.sourcetreeapp.com/"

  depends_on macos: ">= :mojave"

  app "Sourcetree-Beta.app"
  binary "#{appdir}/Sourcetree-Beta.app/Contents/Resources/stree"

  uninstall launchctl: "com.atlassian.SourceTreePrivilegedHelper2",
            quit:      "com.torusknot.SourceTreeNotMAS"

  zap trash: [
    "~/Library/Application Support/SourceTree",
    "~/Library/Caches/com.torusknot.SourceTreeNotMAS",
    "~/Library/Preferences/com.torusknot.SourceTreeNotMAS.plist",
    "~/Library/Preferences/com.torusknot.SourceTreeNotMAS.LSSharedFileList.plist",
    "~/Library/Saved Application State/com.torusknot.SourceTreeNotMAS.savedState",
  ]
end
