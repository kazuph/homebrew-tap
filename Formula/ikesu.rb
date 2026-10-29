class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.39"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.39/ikesu-darwin-arm64"
      sha256 "398e7a4972a380558eba0ee1f8ec5168c69cefc8b86a5cf826a1e8f071b75497"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.39/ikesu-darwin-amd64"
      sha256 "2c5db7cc60a1b1d9bfe8666a92de1492bd152ed753cc2fd4bbda0d1106185601"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.39/ikesu-linux-arm64"
      sha256 "1228d9475ba3c9a254c0cd0614b2ec6ba91ccca02c0b2cf6d0227b36cf297f42"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.39/ikesu-linux-amd64"
      sha256 "1649c98c6580dac1b830da0d0b86e7280cb622abf5b886c2fdb3125c34fa4739"
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
