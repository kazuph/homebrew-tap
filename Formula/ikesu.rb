class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.52"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.52/ikesu-darwin-arm64"
      sha256 "9fe8640d7e5056b1717ad09ab103032ee051e58dd40f39d94b06fa0b28b52acd"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.52/ikesu-darwin-amd64"
      sha256 "e08379e1687821ba07e0642afb67abd203a98df7c0e840d21c241353b70aa3c9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.52/ikesu-linux-arm64"
      sha256 "0c0eeb222681db1476703fc334235de21364afe60ff663ab81bb1232c984c04c"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.52/ikesu-linux-amd64"
      sha256 "99ddb7b3ebb519cf2619a3618e58b19a88f48df4591e893be5d824462526f9c6"
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
