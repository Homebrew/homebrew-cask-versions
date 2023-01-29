cask "virtualbox-beta" do
  on_intel do
    version "7.0.0_BETA3,153829"
    sha256 "a97ad4e37f975ec3ec093a1dfc58f456cac2066f27ccc743a523a261235785b0"
    url "https://download.virtualbox.org/virtualbox/#{version.csv.first}/VirtualBox-#{version.csv.first}-#{version.csv.second}-OSX.dmg"

    # `LATEST-BETA.TXT` contains version text (e.g., `1.2.3_BETA4\n`) that
    # should correspond to a related directory where we can identify all the
    # version parts from a filename.
    livecheck do
      url "https://download.virtualbox.org/virtualbox/LATEST-BETA.TXT"
      regex(/href=.*?VirtualBox[._-]v?(\d+(?:\.\d+)+[._-][^._-]+?)[._-](\d+)[._-]OSX\.dmg/i)
      strategy :page_match do |page, regex|
        dir_page = Homebrew::Livecheck::Strategy.page_content("https://download.virtualbox.org/virtualbox/#{page.strip}/")
        dir_page[:content]&.scan(regex)&.map { |match| "#{match[0]},#{match[1]}" }
      end
    end
  end
  on_arm do
    version "7.0.6_BETA4-155176"
    sha256 "0f3c380155a2bf8582058b1d7ae073a7fa76f9c1843f7e78c3dfe6cdcefe73bd"
    url "https://download.virtualbox.org/virtualbox/7.0.6/VirtualBox-7.0.6_BETA4-155176-macOSArm64.dmg"

    # TODO: Add a `livecheck` block if/when ARM64 dmg files are stored in a
    # predictable directory on download.virtualbox.org. ARM64 files are
    # currently shoehorned into stable version directories instead of the
    # usual unstable version directories (e.g., 7.0.0_BETA3). At the moment,
    # we would have to check both the highest unstable and stable version
    # directories for an ARM64 file to find the newest version from each.
    livecheck do
      skip "No reliable way to get version information"
    end
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
