class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.44"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.44/ikesu-darwin-arm64"
      sha256 "f6227e7ebffd8765bd5e5184d9b5fa1e52379adacd183e1bcb821e4c2772a0bd"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.44/ikesu-darwin-amd64"
      sha256 "43b8dd11a54159f3e5827ce9f7a4a720e7401efe922d78bb6c43bae3228f3fb7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.44/ikesu-linux-arm64"
      sha256 "d0d906a58f83bcd22fdf8219a704b9a0b69f56df3c81d28f11db532beea9bd7d"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.44/ikesu-linux-amd64"
      sha256 "5052e9ef9b4649d2baf6fd87fb81765b121fc704bb91897a442799477786b56e"
    end
  end

  def install
    bin.install stable.url.split("/").last => "ikesu"
    chmod 0755, bin/"ikesu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ikesu --version")
  end
end
