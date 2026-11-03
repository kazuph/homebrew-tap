class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.70"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.70/ikesu-darwin-arm64"
      sha256 "e746da4d2247391c6739621779344d392b8df17a7de3a36b06d22daa1723d175"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.70/ikesu-darwin-amd64"
      sha256 "15355056431cdaa97eb3142eb805daa7ed9e065c6577f7f1fa8f3fada79794bc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.70/ikesu-linux-arm64"
      sha256 "7280a4b32908433f34808294f7c8b03bfe363c96a330ee32f1f27b656c8a5613"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.70/ikesu-linux-amd64"
      sha256 "1d06c6bad7accf587ff5e3f9d79aa075d49545a2144f1fe0cb27c175263b383a"
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
