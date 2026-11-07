class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.100"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.100/ikesu-darwin-arm64"
      sha256 "f52bc437e7bd8263ef8df47ebbb388909f7acd35fd51aca8c05277be60899750"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.100/ikesu-darwin-amd64"
      sha256 "bd843b3030fe5a074002fd33a132f681473c4d7333d84c98aedf9773c02125a2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.100/ikesu-linux-arm64"
      sha256 "10e7ef359059442976bc1bb298b038b505c66e60a9763893d1396368ad418acf"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.100/ikesu-linux-amd64"
      sha256 "863705ec08f16596d8acfd639c85bc1737e20736aa494c39b43b8247525f512c"
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
