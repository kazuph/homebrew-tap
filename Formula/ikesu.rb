class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.97"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.97/ikesu-darwin-arm64"
      sha256 "193f6fc1b6a83af78bfe3af5500d5baf1c4174677c093118d1a13f8a1376d7e4"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.97/ikesu-darwin-amd64"
      sha256 "ecd9404b7f36e3e6a20320a85bfc06872d5bee38d71139f364df71dccbaaf4f6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.97/ikesu-linux-arm64"
      sha256 "21946da81e4216d830a013764f0fbf0a490b90457d0a2fe7afc328b42f743005"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.97/ikesu-linux-amd64"
      sha256 "bc613bd7a4dd6bf46e0007b7eb210c6289b6efd09684368e1c86dc9e2cae5bbc"
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
