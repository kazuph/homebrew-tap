class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.101"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.101/ikesu-darwin-arm64"
      sha256 "e854d7c3ff114445d1ca8658959d110673c6fd95670f9fb38a2e03ec05f64212"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.101/ikesu-darwin-amd64"
      sha256 "2e92ea91848c0d01193bc3ab2e37dbec141eee87c3807730174a253337ec9817"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.101/ikesu-linux-arm64"
      sha256 "eb7d26b8e16ff7708a4eebb3c61e74685a41d257fa266555ae4293db62688773"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.101/ikesu-linux-amd64"
      sha256 "d0110f5ae9baa708d17ba207a2277443086a68d56fec996a7755b9197b8a9060"
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
