class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.116"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.116/ikesu-darwin-arm64"
      sha256 "9ece54d01349387049fabc87c6bc2f5057e55fc024b0511c250cf5f68220ca03"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.116/ikesu-darwin-amd64"
      sha256 "1e3a07e485a90ecfbef5244882e5da2d78aad1ff743cee938710be8eaaaeef92"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.116/ikesu-linux-arm64"
      sha256 "1c01535eddc536c910e8fd5b440e8f62b45b5750e46580f802c4305d06097b81"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.116/ikesu-linux-amd64"
      sha256 "0e54a401f9955484664eccf906777b381d1ff774f8b16d54bce92138d154aa3b"
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
