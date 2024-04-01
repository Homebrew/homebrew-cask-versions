cask "microsoft-edge-beta" do
  linkid = on_arch_conditional arm: "2099618", intel: "2069439"

  on_arm do
    version "124.0.2478.19,db52bb3d-0122-4903-b4f7-5576d0e94ac0"
    sha256 "6fbe862452632aed3be7c0b29eea5c6dc9ad92d2fa2c48cabfd16e6fed3f6207"
  end
  on_intel do
    version "124.0.2478.19,2abb273f-4823-4cb4-8b72-265a72ab80e1"
    sha256 "3bc5a8bba95cb9261c1fb4794437b3b41ea314cf2b17b3279da652dfcf635253"
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
              "com.microsoft.EdgeUpdater.wake.system",
            ],
            pkgutil:   "com.microsoft.edgemac.Beta"

  zap trash: [
    "~/Library/Application Support/Microsoft Edge Beta",
    "~/Library/Caches/Microsoft Edge Beta",
    "~/Library/Preferences/com.microsoft.edgemac.Beta.plist",
    "~/Library/Saved Application State/com.microsoft.edgemac.Beta.savedState",
  ]
end
