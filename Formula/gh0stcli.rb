class Gh0stcli < Formula
  desc "Client and MCP server for the gh0stcloud managed Kubernetes platform"
  homepage "https://gh0stservice.com/en/gh0stcloud/self-service"
  version "0.16.2"
  license "LGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.16.2/gh0stcli_0.16.2_darwin_arm64.tar.gz"
      sha256 "abd5f7a1f86f0daa3096b6e287617926502c055c2f9fd8d963312f99ce34c58c"
    else
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.16.2/gh0stcli_0.16.2_darwin_amd64.tar.gz"
      sha256 "4fa17e753d416c7ab3aa20072ff07a66f9797607c8e61d8af02625f449d983ff"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.16.2/gh0stcli_0.16.2_linux_arm64.tar.gz"
      sha256 "806d2cc371d1dbad385c3b21fa77cd9325478808da8c03e0a5964248761e1886"
    else
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.16.2/gh0stcli_0.16.2_linux_amd64.tar.gz"
      sha256 "e4c5cce28c238e787683dab58f93ce1dd50fe09d04c216eecff53a7eb9ee13c5"
    end
  end

  def install
    bin.install "gh0stcli"
  end

  test do
    system bin/"gh0stcli", "--help"
  end
end
