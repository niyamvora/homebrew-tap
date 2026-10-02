cask "ilovenotch" do
  version "1.3.0"
  sha256 "d92209ed102efdddbab54abeeb83734df066a359c1dc3e578c0ea5b2ce0b7945"

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
