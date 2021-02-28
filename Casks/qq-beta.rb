cask "qq-beta" do
  version "8.4.10.118"
  sha256 "ded744643db8d5912cb96d89232786a55eb6c08d7e0198c7495c7278d2817d16"

  url "https://dldir1.qq.com/qqfile/QQforMac/QQCatalyst/QQ_#{version}.dmg"
  name "QQ Beta"
  desc "Instant messaging tool"
  homepage "https://im.qq.com/macqq/"

  app "QQ体验版.app"

  zap trash: [
    "~/Library/Application Scripts/com.tencent.mqq",
    "~/Library/Containers/com.tencent.mqq",
  ]
end
