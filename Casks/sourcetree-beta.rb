cask "sourcetree-beta" do
  version "4.0.2b6_235"
  sha256 "57144614a0d6e0dea85b464deae3b3cbdceb3e285a28598969cb3a2fe346af76"

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
