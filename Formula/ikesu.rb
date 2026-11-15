class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.150"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.150/ikesu-darwin-arm64"
      sha256 "fb8157a3199e753298ec8dc566fae5bccd2b3690c31dddfb7f36b460e4198d99"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.150/ikesu-darwin-amd64"
      sha256 "c432a8bbf12ad599d76e4326841b4edeeda9bedcad459b370d5acb5647310e61"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.150/ikesu-linux-arm64"
      sha256 "d775ce7267414d28cd69cc6d7accd1576581e1e5a65d89c15852932f3e86acab"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.150/ikesu-linux-amd64"
      sha256 "35c22bdc3d465a53a928154165c5aded5f1f1ed4c06a0152c48436bfce99657d"
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
