class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.151"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.151/ikesu-darwin-arm64"
      sha256 "e72a59e453bdfdd2e9e8d5723c7ee7a0e491a94636fdbc29491ad2fe2dc195f4"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.151/ikesu-darwin-amd64"
      sha256 "d92b486e1740e0f308d34a43fe0075a5eedd82d906edd8ceb152537f4e378d11"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.151/ikesu-linux-arm64"
      sha256 "fb38ae516088ab3311ad0e20c0c8d3f10eaaf44b7ad13797944eabd4ffec3fe2"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.151/ikesu-linux-amd64"
      sha256 "6d97e0195a68684c03ade8c0aef7f247e901436d78987e5864df64781bc94c2f"
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
