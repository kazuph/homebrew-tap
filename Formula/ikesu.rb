class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.13/ikesu-darwin-arm64"
      sha256 "3d160fa77f01543836bc697664c8387b214db3f06357c8e2f90433686a9b3ed6"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.13/ikesu-darwin-amd64"
      sha256 "41a59d85500902db3c9d1a4f04a28d3934da97953f7a2d696fef84f110fb1abd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.13/ikesu-linux-arm64"
      sha256 "ad2697f4f945baab5c0dfcd04a974d5b74bbfe49019d92b424b7974f4bd68470"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.13/ikesu-linux-amd64"
      sha256 "1674adc5d554f645e15a73e05c5d02fc15279b580c7bf437c90b1a9b49198a04"
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
