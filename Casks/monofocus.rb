cask "monofocus" do
  version "1.0.beta35"
  sha256 :no_check

  url "https://updates.monofocus.app/MonoFocus.latest.dmg"
  name "MonoFocus"
  desc "Keep all tasks from your todo apps on your menu bar"
  homepage "https://monofocus.app/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :catalina"

  app "MonoFocus.app"
end
