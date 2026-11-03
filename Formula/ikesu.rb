class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.72"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.72/ikesu-darwin-arm64"
      sha256 "ee5fd39f89370a9896a31f0406baefd3f0eb4536f18077a4cad1793ea5f7108c"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.72/ikesu-darwin-amd64"
      sha256 "bd3b908052285fe4486790185b198e53d1511a48ebabe39f827a88b4de983c66"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.72/ikesu-linux-arm64"
      sha256 "1f0889e233094b348ea0e75d563045bc06470f5c6e661e3e73fcfa77e71f19d0"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.72/ikesu-linux-amd64"
      sha256 "e9649dabe0ec019c518f1891fdb8ffbf4b43842f6a8ea9d3d8797e5cc792a1e1"
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
