cask "ilovenotch" do
  version "1.5.1"
  sha256 "62b28794eca93d6cefe40e01d6789d36d17ca6081ea7914c6a0137d6ae992c38"

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
