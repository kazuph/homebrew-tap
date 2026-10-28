class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.19"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.19/ikesu-darwin-arm64"
      sha256 "94be2af2e898f79413fc47ad734eaecb152294d6f5d4db5f500b88beedebeb96"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.19/ikesu-darwin-amd64"
      sha256 "db31c1b6abad6daf98d94c8e31862addccfd0e21ec65e283020caf701ba80d7e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.19/ikesu-linux-arm64"
      sha256 "fc83464fb25fecfb395c5c7a8d8625045cbece4526c907d7cc51e413ede5d1bd"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.19/ikesu-linux-amd64"
      sha256 "2bb7e4ab44184927ab0b54c9938f44df55ff04a5b117cc812ab50c1ef30b15d1"
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
