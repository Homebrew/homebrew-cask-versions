cask "sourcetree-beta" do
  version "4.0b5_233"
  sha256 "7b2aa93b02c929ae9e99657f755b32da500ab23bd0efbf20c35a643ddb25c35a"

  # product-downloads.atlassian.com/software/sourcetree/ was verified as official when first introduced to the cask
  url "https://product-downloads.atlassian.com/software/sourcetree/beta/Sourcetree_#{version}.zip"
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
