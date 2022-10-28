cask "virtualbox-beta" do
  on_intel do
    version "7.0.0_BETA3,153829"
    sha256 "a97ad4e37f975ec3ec093a1dfc58f456cac2066f27ccc743a523a261235785b0"
    url "https://download.virtualbox.org/virtualbox/#{version.csv.first}/VirtualBox-#{version.csv.first}-#{version.csv.second}-OSX.dmg"

    livecheck do
      url :homepage
      regex(/href=.*?VirtualBox[._-]v?(\d+(?:\.\d+)+[._-][^._-]+?)[._-](\d+)[._-]OSX\.dmg/i)
      strategy :page_match do |page, regex|
        page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
      end
    end
  end
  on_arm do
    version "7.0.2,BETA4,154219"
    sha256 "c5b85d3168faabc269035d82d2510b92937d4e389ef93139b4333960cd683582"
    url "https://download.virtualbox.org/virtualbox/#{version.csv.first}/VirtualBox-#{version.csv.first}_#{version.csv.second}-#{version.csv.third}-macOSArm64.dmg"

    # TODO: Add a `livecheck` block if/when ARM64 dmg files are linked on
    # the "Testbuilds" page (https://www.virtualbox.org/wiki/Testbuilds) or
    # stored in a predictable directory on download.virtualbox.org. ARM64 files
    # are currently shoehorned into stable version directories (instead of
    # being in an unstable directory like 7.0.0_BETA3). Unless this remains
    # true going forward, we would end up making a number of wasted requests in
    # an attempt to identify a new unstable ARM64 version.
  end

  name "Oracle VirtualBox"
  desc "Virtualizer for x86 and arm64 hardware"
  homepage "https://www.virtualbox.org/wiki/Testbuilds"

  conflicts_with cask: "virtualbox"

  pkg "VirtualBox.pkg",
      choices: [
        {
          "choiceIdentifier" => "choiceVBoxKEXTs",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,
        },
        {
          "choiceIdentifier" => "choiceVBox",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,
        },
        {
          "choiceIdentifier" => "choiceVBoxCLI",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,
        },
        {
          "choiceIdentifier" => "choiceOSXFuseCore",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
      ]

  postflight do
    # If VirtualBox is installed before `/usr/local/lib/pkgconfig` is created by Homebrew,
    # it creates it itself with incorrect permissions that break other packages.
    # See https://github.com/Homebrew/homebrew-cask/issues/68730#issuecomment-534363026
    set_ownership "/usr/local/lib/pkgconfig"
  end

  uninstall script:  {
              executable: "VirtualBox_Uninstall.tool",
              args:       ["--unattended"],
              sudo:       true,
            },
            pkgutil: "org.virtualbox.pkg.*",
            delete:  "/usr/local/bin/vboximg-mount"

  zap trash: [
        "/Library/Application Support/VirtualBox",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.virtualbox.app.virtualbox.sfl*",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.virtualbox.app.virtualboxvm.sfl*",
        "~/Library/Preferences/org.virtualbox.app.VirtualBox.plist",
        "~/Library/Preferences/org.virtualbox.app.VirtualBoxVM.plist",
        "~/Library/Saved Application State/org.virtualbox.app.VirtualBox.savedState",
        "~/Library/Saved Application State/org.virtualbox.app.VirtualBoxVM.savedState",
        "~/Library/VirtualBox",
      ],
      rmdir: "~/VirtualBox VMs"

  caveats do
    kext
  end
end
