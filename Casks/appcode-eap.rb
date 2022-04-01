cask "appcode-eap" do
  arch = Hardware::CPU.intel? ? "" : "-aarch64"

  version "2022.1,221.5080.57"

  if Hardware::CPU.intel?
    sha256 "eb51014b7fb7404196870766cec5c3030c3446b4f4cd1d840c5a51d22d2d04ce"
  else
    sha256 "380af65c2f0ef0cc3e913255eef0ebff9222a8c6e183dfd557ebaf647df66a63"
  end

  url "https://download.jetbrains.com/objc/AppCode-#{version.csv.second}#{arch}.dmg"
  name "AppCode EAP"
  desc "IDE for Swift, Objective-C, C, and C++ development"
  homepage "https://www.jetbrains.com/objc/nextversion/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=AC&latest=true&type=eap"
    strategy :page_match do |page|
      JSON.parse(page)["AC"].map do |release|
        "#{release["version"]},#{release["build"]}"
      end
    end
  end

  conflicts_with cask: "appcode"

  app "AppCode #{version.csv.first} EAP.app"

  zap delete: [
    "~/Library/Application Support/AppCode#{version.csv.first}",
    "~/Library/Caches/AppCode#{version.csv.first}",
    "~/Library/Logs/AppCode#{version.csv.first}",
    "~/Library/Preferences/AppCode#{version.csv.first}",
  ]
end
