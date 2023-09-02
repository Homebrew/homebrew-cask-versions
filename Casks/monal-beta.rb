cask "monal-beta" do
  version "862"
  sha256 "1613d556b15727a18c4e3d00ffc9501720c6732027c732489be3466a7b9d35e9"

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
