class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.32"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.32/ikesu-darwin-arm64"
      sha256 "ce7dde8018f822a775837749f22ebd5e1878c8d48a6a60e8df0dea5404a96cec"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.32/ikesu-darwin-amd64"
      sha256 "e66c77cd57f42d63ec9a864fe82b72258b342381ef0b33837493808c975f821d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.32/ikesu-linux-arm64"
      sha256 "fece791afb39b3bf14fcb1385ca6651fc0bb22ea2a63aff28f66871afe722745"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.32/ikesu-linux-amd64"
      sha256 "3300da5551f4e63a96983cf2582c01ab094e141bb83764a1fbacdc4e31e1adbe"
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
