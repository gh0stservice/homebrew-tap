class Gh0stcli < Formula
  desc "Client and MCP server for the gh0stcloud managed Kubernetes platform"
  homepage "https://gh0stservice.com/en/gh0stcloud/self-service"
  version "0.4.0"
  license "LGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.4.0/gh0stcli_0.4.0_darwin_arm64.tar.gz"
      sha256 "c7ba43fe4782899c24afcecd7e70f1454f9483fa7790135843f11fbb578fce29"
    else
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.4.0/gh0stcli_0.4.0_darwin_amd64.tar.gz"
      sha256 "c049b631bf99391e1a88740ccc1e83c3fea2d167eea3e30f3c0e920547af93b1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.4.0/gh0stcli_0.4.0_linux_arm64.tar.gz"
      sha256 "1c066b1450a9acf04205a1d2fa66968e52e945bdbfea5b24d8886b25ef9ae0c6"
    else
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.4.0/gh0stcli_0.4.0_linux_amd64.tar.gz"
      sha256 "135bf6244bc163ee62b9e7ad586902b72efa70d8e8ce09a828595fa67a2d33ec"
    end
  end

  def install
    bin.install "gh0stcli"
  end

  test do
    system bin/"gh0stcli", "--help"
  end
end
