class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.189"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.189/ikesu-darwin-arm64"
      sha256 "beb45dbef94150f59f5bb3391f233c42589b98cc32ad79d99aab019ac7d41046"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.189/ikesu-darwin-amd64"
      sha256 "18d30e5424cf823ecf7fc0d1742fc9557d1a8eab85579138ea9a91ea8dc4fb18"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.189/ikesu-linux-arm64"
      sha256 "d7ecdc973b779660ac73c73136e72110e0c8542b31b56ed16a373cb129c818c0"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.189/ikesu-linux-amd64"
      sha256 "131e95f4206fd0b70cea1bd5713bb01f265b365e192fd7c54d69d89a46117e8b"
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
