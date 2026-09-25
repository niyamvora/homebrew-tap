cask "ilovenotch" do
  version "1.0.0"
  sha256 "61af1ea2d495359584133c6c8d81822de147e2dba2d55b8bfea86c7684f1dccb"

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
