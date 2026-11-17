class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.164"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.164/ikesu-darwin-arm64"
      sha256 "098248b1d088ef0e91afdfcb8c79e0f65f11413c618e7c51a246f6dffebd0939"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.164/ikesu-darwin-amd64"
      sha256 "c35f9ae67fb51692de6c79a0ed898bf33e1c8ce5d19806251970436f14bb3545"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.164/ikesu-linux-arm64"
      sha256 "1e3a25758846dbc6be7de05e029b5242fe9e23f855fd90ad6933640648d95d9d"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.164/ikesu-linux-amd64"
      sha256 "388d2afa8554b5b42015da6e3727bc9709118b3a86935fa8d6677109e2fa76b8"
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
