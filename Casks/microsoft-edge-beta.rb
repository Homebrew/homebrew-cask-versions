cask "microsoft-edge-beta" do
  linkid = on_arch_conditional arm: "2099618", intel: "2069439"

  on_arm do
    version "122.0.2365.38,c20722ad-4d6c-4569-b22d-d186ef2a91dc"
    sha256 "5339b25e7e4dc8f731cf0fcd5d88d2fbe01465272068d45c43483e215d94ac1b"
  end
  on_intel do
    version "122.0.2365.38,5faa96e3-7449-4f92-8669-f071d3242cf0"
    sha256 "7a4388445279eaa2cd2a1f1b314676c7c5ad569a2120d17cac0fcfdca778b400"
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

  uninstall launchctl: [
              "com.microsoft.EdgeUpdater.update-internal.109.0.1518.89.system",
              "com.microsoft.EdgeUpdater.update.system",
              "com.microsoft.EdgeUpdater.wake.109.0.1518.89.system",
            ],
            pkgutil:   "com.microsoft.edgemac.Beta"

  zap trash: [
    "~/Library/Application Support/Microsoft Edge Beta",
    "~/Library/Caches/Microsoft Edge Beta",
    "~/Library/Preferences/com.microsoft.edgemac.Beta.plist",
    "~/Library/Saved Application State/com.microsoft.edgemac.Beta.savedState",
  ]
end
