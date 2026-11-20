class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.177"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.177/ikesu-darwin-arm64"
      sha256 "a8e2b7a3d63c4f71020bddfa21ba19a9234091f6e911c7d879269e239ab233ba"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.177/ikesu-darwin-amd64"
      sha256 "4d88108c1921de8bf9c44b7d6950aca3122557528bc057e7d989e2c523576ae2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.177/ikesu-linux-arm64"
      sha256 "24f344362f5a7fb380028c78d31c0eeed6ef6cdce123ad17164e1c0a53e856e0"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.177/ikesu-linux-amd64"
      sha256 "3cf9a0b710821beed158a8a8de51b30e036bb30092c9651add03e7fd59302b44"
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
