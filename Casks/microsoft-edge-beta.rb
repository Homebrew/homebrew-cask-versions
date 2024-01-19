cask "microsoft-edge-beta" do
  linkid = on_arch_conditional arm: "2099618", intel: "2069439"

  on_arm do
    version "121.0.2277.71,92181d3e-edd5-4c42-aa02-ce86adcae27c"
    sha256 "3e1478a6f89b619084cbd7c32755efce8717f25c213a0f331c3c863c2895a992"
  end
  on_intel do
    version "121.0.2277.71,ced305a5-768d-4cc5-a624-7d8efde2787a"
    sha256 "54cb9872ed44edd0c24616328be3faf7f116f4de329bd31c57200a3dc46b01c8"
  end

  url "https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/#{version.csv.second}/MicrosoftEdgeBeta-#{version.csv.first}.pkg"
  name "Microsoft Edge Beta"
  desc "Multi-platform web browser"
  homepage "https://www.microsoft.com/en-us/edge/download/insider?form="

  livecheck do
    url "https://go.microsoft.com/fwlink/?linkid=#{linkid}"
    regex(%r{/([^/]+)/MicrosoftEdgeBeta[._-]v?(\d+(?:\.\d+)+)\.pkg}i)
    strategy :header_match do |headers, regex|
      headers["location"].scan(regex).map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  auto_updates true

  pkg "MicrosoftEdgeBeta-#{version.csv.first}.pkg",
      choices: [
        {
          "choiceIdentifier" => "com.microsoft.package.Microsoft_AutoUpdate.app", # Office16_all_autoupdate.pkg
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
      ]

  uninstall pkgutil:   "com.microsoft.edgemac.Beta",
            launchctl: [
              "com.microsoft.EdgeUpdater.update-internal.109.0.1518.89.system",
              "com.microsoft.EdgeUpdater.update.system",
              "com.microsoft.EdgeUpdater.wake.109.0.1518.89.system",
            ]

  zap trash: [
    "~/Library/Application Support/Microsoft Edge Beta",
    "~/Library/Caches/Microsoft Edge Beta",
    "~/Library/Preferences/com.microsoft.edgemac.Beta.plist",
    "~/Library/Saved Application State/com.microsoft.edgemac.Beta.savedState",
  ]
end
