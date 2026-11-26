class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.200"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.200/ikesu-darwin-arm64"
      sha256 "d28e17d55ebc30287ea93e11301b640a5468ed8d2bc3f3fa034a1c47fc47264f"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.200/ikesu-darwin-amd64"
      sha256 "0036bb166d178b9699b338a39c6c85bda3b8e14590bbb180fb4997b56432603a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.200/ikesu-linux-arm64"
      sha256 "5169a35ea049c2221765dd6f96e78c27a00542ba5572cf01dad93e82f3d2609c"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.200/ikesu-linux-amd64"
      sha256 "58f303ce0d617362dcd24347def471902343af3ec41665cc635f773c0c9ee7f0"
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
