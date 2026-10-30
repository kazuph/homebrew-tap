class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.51"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.51/ikesu-darwin-arm64"
      sha256 "0d99df7f463bc71f8d169210eb5fe47b0a8b7b4ba8186d439fa16d11f9351f82"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.51/ikesu-darwin-amd64"
      sha256 "f840e805af3c4467902ce4dbb7876575bdc24459a758cdfa3199152738f57b37"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.51/ikesu-linux-arm64"
      sha256 "8d2f7184c3815f600a7f0e21772e268aa5cfbaeece319cd6975d9b314a11099f"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.51/ikesu-linux-amd64"
      sha256 "11e22032cb7f6b7aac1cf136e1f7d78d67ae39c453f5fd3aa8d3ef572debcb5b"
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
