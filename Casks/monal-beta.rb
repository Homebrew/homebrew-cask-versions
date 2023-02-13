cask "monal-beta" do
  version "847"
  sha256 "08f0f146aaee5e359a3e1f73cb6dbdd5d8a95653bcd55c98b646d6c7484eebf1"

  url "https://downloads.monal-im.org/monal-im/beta/macOS/Monal-#{version}.zip"
  name "Monal"
  desc "Tool to securely connect to chat servers"
  homepage "https://monal-im.org/"

  livecheck do
    url "https://downloads.monal-im.org/monal-im/beta/macOS/latest.txt"
    regex(/^(\d+)$/i)
  end

  conflicts_with cask: "monal"
  depends_on macos: ">= :catalina"

  app "Monal.app"

  zap trash: "~/Library/Group Containers/group.monal"
end
