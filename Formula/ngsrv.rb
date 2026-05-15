class Ngsrv < Formula
  desc "Secure WebSocket-based tunnel CLI for exposing local servers to the internet"
  homepage "https://ngsrv.com"
  version "2.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://releases.ngsrv.com/v2.3.1/ngsrv_2.3.1_darwin-arm64.tar.gz"
      sha256 "449ea099b2cbffcda53dff3acac93cbec9e7d528f0c518bf3cad26a62b925a5c"
    end
    on_intel do
      url "https://releases.ngsrv.com/v2.3.1/ngsrv_2.3.1_darwin-amd64.tar.gz"
      sha256 "03e0efd10dedb7f828f6eb818faa648050025ee005e6850fd5d8c627beedfcd6"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.ngsrv.com/v2.3.1/ngsrv_2.3.1_linux-arm64.tar.gz"
      sha256 "bb27d47075e18dfa2f3e00e5b92fa1c36bad73094b2846ad36390e2614880e76"
    end
    on_intel do
      url "https://releases.ngsrv.com/v2.3.1/ngsrv_2.3.1_linux-amd64.tar.gz"
      sha256 "ced934b3a0454e83641ea2e7292130945f78bc1af3855dc5af009a1230dfe724"
    end
  end

  def install
    bin.install "ngsrv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ngsrv version")
  end
end
