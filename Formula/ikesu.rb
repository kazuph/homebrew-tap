class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.17/ikesu-darwin-arm64"
      sha256 "7926444b1e37ac4e4e64e7bb94dfa8ac949820d54af398876bbec086fca19e21"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.17/ikesu-darwin-amd64"
      sha256 "c7e57a162ddc5b9669de569d15deea7094d486ab94746a1d9e40cb3e8f433e2a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.17/ikesu-linux-arm64"
      sha256 "b08ff59b1b0709a15c6064045f0ee43c5dc79e9abcd70637b3d28b7b465fb202"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.17/ikesu-linux-amd64"
      sha256 "71faa8a516abc6d8005d8a41da56094df5eb002369becf68222335cca3cff4b7"
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
