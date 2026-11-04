class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.73"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.73/ikesu-darwin-arm64"
      sha256 "e937b4c1635f687d57f387f0e02424282d53c6a900bd0c9640f112a6ba9a05b8"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.73/ikesu-darwin-amd64"
      sha256 "b73ed8055eee6e1de301c4eb0f299895bec4130327b4c2b1e54c45ecde200c0e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.73/ikesu-linux-arm64"
      sha256 "5a715120b6bb02df0c791f53b71f29680f923728fadc7891610e630816143119"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.73/ikesu-linux-amd64"
      sha256 "27eb0d78ef5e9d4d8eedbed1cf7881509fa5461cc17b2141ff87181673d5ed85"
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
