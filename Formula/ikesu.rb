class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.159"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.159/ikesu-darwin-arm64"
      sha256 "439a23cefade0e313efd8d26d0ca1e4338d9e1bc223994a70a2f51c58f1ff6ac"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.159/ikesu-darwin-amd64"
      sha256 "f17bc197c31b0e16f9ad0e88a624e556de82f62fda5ded20432fb269bb440ad5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.159/ikesu-linux-arm64"
      sha256 "26d9ecb1f7bde096aa68035f00e4823ea066e8ee196c285b06831e81fac5d855"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.159/ikesu-linux-amd64"
      sha256 "e195b39d1f256f87c526d77bc5c20e9d9b54e2666bd7aff28d7ff3c19984320a"
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
