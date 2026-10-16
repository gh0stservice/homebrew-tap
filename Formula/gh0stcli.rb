class Gh0stcli < Formula
  desc "Client and MCP server for the gh0stcloud managed Kubernetes platform"
  homepage "https://gh0stservice.com/en/gh0stcloud/self-service"
  version "0.9.0"
  license "LGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.9.0/gh0stcli_0.9.0_darwin_arm64.tar.gz"
      sha256 "e05c2693af0283817aa2a440910bd9cfcfc4bd367387f453e5f7a1ffb0e6679f"
    else
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.9.0/gh0stcli_0.9.0_darwin_amd64.tar.gz"
      sha256 "bdc9a020cac5bef1b2488ef471282a180afc38baf56b68bd6ac207ab74d92713"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.9.0/gh0stcli_0.9.0_linux_arm64.tar.gz"
      sha256 "15608df76f98e9161e1d554d267b2b0b34da0316db17a3d680947f9282deebf7"
    else
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.9.0/gh0stcli_0.9.0_linux_amd64.tar.gz"
      sha256 "d00dd8f9c90f3c4bfaaf5fd42519866e62bc96d7e314a9372b8338342a2c5925"
    end
  end

  def install
    bin.install "gh0stcli"
  end

  test do
    system bin/"gh0stcli", "--help"
  end
end
