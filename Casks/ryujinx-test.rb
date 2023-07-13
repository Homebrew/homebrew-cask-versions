cask "ryujinx-test" do
  version "1.1.960"
  sha256 "e4ed8429f222205bf62b100d5836e05a73c4bd57fc94a5ebb274bc5bd6d33874"

  url "https://github.com/Ryujinx/release-channel-master/releases/download/#{version}/test-ava-ryujinx-#{version}-macos_universal.app.tar.gz",
      verified: "github.com/Ryujinx/release-channel-master/"
  name "Ryujinx Test Channel"
  desc "Experimental Nintendo Switch Emulator written in C#, Test Build"
  homepage "https://ryujinx.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Ryujinx.app"

  zap trash: [
    "~/Library/Application Support/Ryujinx",
    "~/Library/Application Support/CrashReporter/Ryujinx_*.plist",
    "~/Library/Preferences/org.ryujinx.Ryujinx.plist",
    "~/Library/Saved Application State/org.ryujinx.Ryujinx.savedState",
  ]
end
