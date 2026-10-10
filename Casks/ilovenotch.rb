cask "ilovenotch" do
  version "1.4.0"
  sha256 "4dd58902869107e20756278f81e0a7ca293b45c61545f3053dac30a0f8a7cadc"

  url "https://github.com/niyamvora/ILoveNotch/releases/download/v#{version}/ILoveNotch-#{version}.dmg"
  name "ILoveNotch"
  desc "MacBook notch tray for media, files, tasks, timers and AI usage"
  homepage "https://github.com/niyamvora/ILoveNotch"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "ILoveNotch.app"

  zap trash: [
    "~/Library/Application Support/OpenNotch",
    "~/Library/Caches/cafe.opennotch.app",
    "~/Library/HTTPStorages/cafe.opennotch.app",
    "~/Library/HTTPStorages/cafe.opennotch.app.binarycookies",
    "~/Library/Preferences/cafe.opennotch.app.plist",
  ]
end
