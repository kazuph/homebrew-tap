class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.146"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.146/ikesu-darwin-arm64"
      sha256 "3d09fb8e87c7ec3c2f52df40502b79400b01efde16dc1593bfe386e9150af45a"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.146/ikesu-darwin-amd64"
      sha256 "25005a800b100af79ea50da83b8bb1a946c3b53a17030d23b6706ad19a9a508f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.146/ikesu-linux-arm64"
      sha256 "685a16c2b1b0e618dfce03c30bfcf5a2f3d574453ef93a0dd6236c7f2cb939d0"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.146/ikesu-linux-amd64"
      sha256 "1da9f0c7a464da04ebd858dd371368a5c6d930e9be2f13f3cf8f56a4960d4cbe"
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
