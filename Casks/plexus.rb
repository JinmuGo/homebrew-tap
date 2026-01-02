cask "plexus" do
  version "0.1.0"

  on_arm do
    url "https://github.com/JinmuGo/plexus/releases/download/v#{version}/plexus-v#{version}-mac-arm64.zip"
    sha256 "c5c6c47e9c7961cfdc3a41ee98be12e8f09cc573e9292ff2b09181437d0c3e76"
  end

  on_intel do
    url "https://github.com/JinmuGo/plexus/releases/download/v#{version}/plexus-v#{version}-mac-x64.zip"
    sha256 "c2b26a844e71f124867cf46e8e19ac07c663d4009e00ebcd806cd7b955d554be"
  end

  name "Plexus"
  desc "AI Agent Observability Platform"
  homepage "https://github.com/JinmuGo/plexus"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Plexus.app"

  zap trash: [
    "~/Library/Application Support/plexus",
    "~/Library/Preferences/com.jinmu-go.plexus.plist",
    "~/Library/Saved Application State/com.jinmu-go.plexus.savedState",
    "~/.plexus",
  ]
end
