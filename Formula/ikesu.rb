class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.48"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.48/ikesu-darwin-arm64"
      sha256 "6642a2969b01fd777271ee8603bcd4c72b3d6e147bfb8621e2b96da5b63e7444"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.48/ikesu-darwin-amd64"
      sha256 "01a586826559fc3a172c616ba192b4febffdab2647ea58dec6b0f3b7d4fe2a9f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.48/ikesu-linux-arm64"
      sha256 "829b9b9b548e0e6f4b645f693bb12d3a04deaae2caf6ed6b7233d9c67f9b50d8"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.48/ikesu-linux-amd64"
      sha256 "bf56e5d9abf319143f9a4989e38ae0ebf657dc6076c71c9311309622c0e9cfb4"
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
