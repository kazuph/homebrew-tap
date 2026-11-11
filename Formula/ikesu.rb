class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.137"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.137/ikesu-darwin-arm64"
      sha256 "314455d0aa6c9da4f1ccde1ef068087aae2af3f25ca63522b361bb8934068e28"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.137/ikesu-darwin-amd64"
      sha256 "9797e54b39527f9c67efdd9444b03f68a813a1ca6304dc61aa1c48d4c3505f9a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.137/ikesu-linux-arm64"
      sha256 "20e57f832be5f9f99b8f2abd4dc76e2cb98280fc9ca91f12df9691f5bcfe86a9"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.137/ikesu-linux-amd64"
      sha256 "563b88d04cf9fda5e112ab259bb0809e98c12589d45e146d66604ab7d3a9f508"
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
