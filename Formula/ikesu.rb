class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.199"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.199/ikesu-darwin-arm64"
      sha256 "7e7df162976dba82162f87c54c7fc71e656a8adb23319b5da7ac33e8c65a13e5"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.199/ikesu-darwin-amd64"
      sha256 "7c88a799e087e0eecec1ed914fac7d5dbf087124ec352d8c25b89572b0534e4b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.199/ikesu-linux-arm64"
      sha256 "85f48b002381ae52292b38a1c7a6f7825778c126c1ddfed3e27a6bdbe579d2b3"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.199/ikesu-linux-amd64"
      sha256 "05f7ec7acbda3b5b068679cc1d1285137a4d97f965f6e4f207cdbd9dc1c3770d"
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
