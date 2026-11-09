class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.112"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.112/ikesu-darwin-arm64"
      sha256 "8237786f86a58c5cebbf6647402515c0e7954ce41b4fdac74822808275627e3f"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.112/ikesu-darwin-amd64"
      sha256 "82f71afa639492a96b84734fa3085911c39fcf6dbda41a8e711a2f3377d3b759"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.112/ikesu-linux-arm64"
      sha256 "6b29c0991189aafbaab2ac365462877e038fd62495a8412386796fb61511ad45"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.112/ikesu-linux-amd64"
      sha256 "56b5ad4f8ca971827efdadb275a569af1d55ff6e09fe898e495e8523318f93c3"
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
