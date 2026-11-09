class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.123"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.123/ikesu-darwin-arm64"
      sha256 "feab0c2a1d40643c361c29ac05cf8d7e070358c773b50550103bf22ed6b0c8fb"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.123/ikesu-darwin-amd64"
      sha256 "1a8b1d6a0d04c7ac19ab7d1e763cc0a08ae6640bfe773f37e188b38e5c79ebb4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.123/ikesu-linux-arm64"
      sha256 "24166ec852476ed25f106013fcdd6cc67650f755f1c87c87d983ea0fe58bd3ff"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.123/ikesu-linux-amd64"
      sha256 "2fba2e69947bad768429c0714b7aa165a6df0509b09b58ae0fe84176164b9ff3"
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
