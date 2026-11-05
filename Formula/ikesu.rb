class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.78"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.78/ikesu-darwin-arm64"
      sha256 "344054deac07be7824844ee552b0efb900ee587b5f35f2d52934aebc19ce1914"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.78/ikesu-darwin-amd64"
      sha256 "939384e772f1a6ee7c1ea77131d9d7ffc9fe7f338e51573a6aa6863c18a34955"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.78/ikesu-linux-arm64"
      sha256 "4b036a74ddb8b74312893594c2e67fb031e6b43d6f2f8a9fbadcc0c9ae2c4d87"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.78/ikesu-linux-amd64"
      sha256 "c4b29b86d77236ca2983d2e274620947d9f611d16d17bfccd36498531361af88"
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
