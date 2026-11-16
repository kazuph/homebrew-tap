class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.160"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.160/ikesu-darwin-arm64"
      sha256 "a9c802faebb466d3796300e0e4a5f91e5b6e1a70519f1e18f541a9368d5f5554"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.160/ikesu-darwin-amd64"
      sha256 "dd3d63bca115e69ca2002391a2d126a4e81caff5fbb09ad7e7c8d4735724f3dc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.160/ikesu-linux-arm64"
      sha256 "46290a0c2089473fb535de8b65e2fd96186ecde0d78081a2f9c9e7f624ada6b1"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.160/ikesu-linux-amd64"
      sha256 "35bb321aa45b03193aefb35461ca4dfb7ce8232f5a098f529ea8ce1f4da9c7b3"
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
