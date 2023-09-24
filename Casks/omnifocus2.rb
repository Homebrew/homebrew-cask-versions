cask "omnifocus2" do
  on_el_capitan :or_older do
    version "2.10"
    sha256 "e808a72e60cdff9ff5aa1046d856bf62d6418e4915248816c4640e32e52fd8e8"

    url "https://downloads.omnigroup.com/software/MacOSX/10.11/OmniFocus-#{version}.dmg"
  end
  on_sierra :or_newer do
    version "2.12.4"
    sha256 "8a2dc53331dba804f6781773fef546a03c181fc4ff0eb7ee4f871c10342621f0"

    url "https://downloads.omnigroup.com/software/MacOSX/10.12/OmniFocus-#{version}.dmg"
  end

  name "OmniFocus"
  desc "Scheduling application focusing on organization"
  homepage "https://www.omnigroup.com/omnifocus/"

  depends_on macos: ">= :sierra"

  app "OmniFocus.app"

  uninstall quit: "com.omnigroup.OmniFocus#{version.major}"

  zap trash: [
    "~/Library/Containers/com.omnigroup.OmniFocus#{version}",
    "~/Library/Preferences/com.omnigroup.OmniFocus#{version}.LSSharedFileList.plist",
    "~/Library/Preferences/com.omnigroup.OmniSoftwareUpdate.plist",
    "~/Library/Caches/Metadata/com.omnigroup.OmniFocus#{version}",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.omnigroup.omnifocus#{version}.sfl*",
    "~/Library/Group Containers/34YW5XSRB7.com.omnigroup.OmniFocus",
    "~/Library/Saved Application State/com.omnigroup.OmniFocus#{version}.savedState",
  ]

  caveats do
    discontinued
  end
end
