cask "processing2" do
  version "2.2.1"
  sha256 "8c237b3eb50626e8ffc648bfdeddaa18ceffbd6a48f8fec77a8eab5b774971fc"

  url "http://download.processing.org/processing-#{version}-macosx.zip"
  name "Processing"
  homepage "https://processing.org/"

  conflicts_with cask: "processing"

  app "Processing.app"

  uninstall quit: "org.processing.app"

  zap trash: "~/Library/Processing/preferences.txt"
end
