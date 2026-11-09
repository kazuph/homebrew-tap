class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.118"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.118/ikesu-darwin-arm64"
      sha256 "cca4a64879f910a65d57650f67c88b62958429d9106d2a44fe2beaf76537e731"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.118/ikesu-darwin-amd64"
      sha256 "7556dad66e9c63e78d39564527ff9ef4daf56cd22a6cad74538489c6f32e97f2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.118/ikesu-linux-arm64"
      sha256 "dda3d4d8f678fe807d8fadeb7f2383a6ff05fab086fb328f3f2d780a8c37d9cd"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.118/ikesu-linux-amd64"
      sha256 "ee5dcc33705a5ae9815c5964447892a6d27b68a54e8065f567d95c40b9f8202f"
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
