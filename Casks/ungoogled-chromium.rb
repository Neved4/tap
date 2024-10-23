cask "ungoogled-chromium" do
  arch arm: "arm64", intel: "x86-64"

  version "129.0.6668.89-1.1"
  sha256 arm:   "16c9c862041c85dbca20abc913092e617fc6208bd9f21c6d60c8c9646267251c",
         intel: "59759a0305ad389513cbe285ba314dd2d49cd69f451fe3bbfab85a81a5d3a28c"

  url "https://github.com/ungoogled-software/ungoogled-chromium-macos/releases/download/#{version}/ungoogled-chromium_#{version}_#{arch}-macos.dmg",
      verified: "github.com/ungoogled-software/ungoogled-chromium-macos/"
  name "Ungoogled Chromium"
  desc "Google Chromium, sans integration with Google"
  homepage "https://ungoogled-software.github.io/"

  depends_on macos: ">= :big_sur"

  app "Chromium.app", target: "Ungoogled Chromium.app"

  zap trash: [
    "~/Library/Application Support/Chromium",
    "~/Library/Caches/Chromium",
    "~/Library/Preferences/org.chromium.Chromium.plist",
    "~/Library/Saved Application State/org.chromium.Chromium.savedState",
  ]
end
