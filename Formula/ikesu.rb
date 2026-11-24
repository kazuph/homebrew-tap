class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.186"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.186/ikesu-darwin-arm64"
      sha256 "e256acfc22adbab3fe9739a57e45c7ddb3d259099bdd84072ade97e25f7b7d32"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.186/ikesu-darwin-amd64"
      sha256 "cf7d879eb8da6ddfd9ea1f99be9304567ab1828bf80fb950810d5c48a8c5f77c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.186/ikesu-linux-arm64"
      sha256 "d50b0442436dba99dac3349aebf548135a27adb24be26d5e1a6af13ee9333b4f"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.186/ikesu-linux-amd64"
      sha256 "6b757feeb77ed4cd1a3b199e16da38301c86fa49affea97dd0ee89dc76d59374"
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
