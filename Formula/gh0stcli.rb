class Gh0stcli < Formula
  desc "Client and MCP server for the gh0stcloud managed Kubernetes platform"
  homepage "https://gh0stservice.com/en/gh0stcloud/self-service"
  version "0.1.11"
  license "LGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.1.11/gh0stcli_0.1.11_darwin_arm64.tar.gz"
      sha256 "d95132d33ccef095a7afb64823c3ac430e54952eaba22aeb551755d4d5583007"
    else
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.1.11/gh0stcli_0.1.11_darwin_amd64.tar.gz"
      sha256 "4c4c7e6b0a022d818d81cc0ae780e1cb46a33063ca6f38937af073e1781545ac"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.1.11/gh0stcli_0.1.11_linux_arm64.tar.gz"
      sha256 "8ceab41f4f9bf80951c6827cd4e5193444f84f9eaac87b8ca26c797a3f92497c"
    else
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.1.11/gh0stcli_0.1.11_linux_amd64.tar.gz"
      sha256 "bf71d250a184a4949133fb71d73e4798960c5c1cfe39235a29d8b73a5009cad5"
    end
  end

  def install
    bin.install "gh0stcli"
  end

  test do
    system bin/"gh0stcli", "--help"
  end
end
