class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.136"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.136/ikesu-darwin-arm64"
      sha256 "2e5b214af66d717e1b5ea39a88a42437f4a6c1eb45bdb6fc14d6ad2f19fac07d"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.136/ikesu-darwin-amd64"
      sha256 "2d2d9bd466c47d836e360914ed9e19c9738f3561a3572887bf2f088f6ef3f02c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.136/ikesu-linux-arm64"
      sha256 "598423dbbb6df76ccb215f1754090bc9bc645a9c2ebf9206b772e64afc29cd4b"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.136/ikesu-linux-amd64"
      sha256 "ecee8c1b526e2dc29a3e6a0f5edafd515821e6cbd3113d440777508004a09a41"
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
