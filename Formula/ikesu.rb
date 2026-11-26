class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.197"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.197/ikesu-darwin-arm64"
      sha256 "ddde81e794741aa984ae4fd54e9b8af79f7bcdff2e5a91e979c85b202a19297b"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.197/ikesu-darwin-amd64"
      sha256 "08ebcda09d2100c4652a957d196144163d8f279ca2176f88077c0d3b65b81a97"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.197/ikesu-linux-arm64"
      sha256 "7f0ba8e5cd62df792f2c4d1c7ec392a746916723aee8b70eb5183434ca1df5fc"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.197/ikesu-linux-amd64"
      sha256 "8899a035d2c0b250f6f95821f6391c49f3d2231e1ce65f692c8f1aa8b6260fc5"
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
