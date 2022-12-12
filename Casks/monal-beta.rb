cask "monal-beta" do
  version "838"
  sha256 "90c3e55c49a22e1988257c6b34563a0722fb51043feae90de7166596fd6a1790"

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
