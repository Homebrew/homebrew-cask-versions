cask "appcode-eap" do
  arch = Hardware::CPU.intel? ? "" : "-aarch64"

  version "2022.2,222.2889.2"

  if Hardware::CPU.intel?
    sha256 "d51f2a6844bf4b6bcd9dbfc6c0fe7e9f822d24dfadc9adfcc6cf5513d1990495"
  else
    sha256 "7f58bee6e91d804cbce1b213c3281f3f2f81399a40dd04fcc6af7215525fb5ae"
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
