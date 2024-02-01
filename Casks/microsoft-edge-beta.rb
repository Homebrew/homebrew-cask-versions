cask "microsoft-edge-beta" do
  linkid = on_arch_conditional arm: "2099618", intel: "2069439"

  on_arm do
    version "122.0.2365.8,1778c3e7-6706-4fda-aa89-3a4711b935a7"
    sha256 "b2baf613af25791f000913c0d1ed5e0cc905feb5a3951da73bfcbf399d91901e"
  end
  on_intel do
    version "122.0.2365.8,15aced77-87d2-4085-86a1-7f80721b3b6c"
    sha256 "88e71ee76a1a8e0cc1a24e24a758a1dafe0ce391fcc56d48c824b2eb14899173"
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
