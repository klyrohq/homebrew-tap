class Klyro < Formula
  desc "Klyro command-line interface"
  homepage "https://klyro.security"
  version "1.10.0"

  on_macos do
    on_arm do
      url "https://get.klyro.security/cli/v1.10.0/klyro_v1.10.0_darwin_arm64"
      sha256 "4728687f03828b7b698b13dee92ffa32309e84b546c9c5f72d6fbac1d521e88b"

      def install
        bin.install "klyro_v1.10.0_darwin_arm64" => "klyro"
      end
    end

    on_intel do
      url "https://get.klyro.security/cli/v1.10.0/klyro_v1.10.0_darwin_amd64"
      sha256 "675ac4e7c3b2e3c427280e11bfa7b8a5de549e9179b45345e569c90f517b421a"

      def install
        bin.install "klyro_v1.10.0_darwin_amd64" => "klyro"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://get.klyro.security/cli/v1.10.0/klyro_v1.10.0_linux_arm64"
      sha256 "363b40b7d3058e3a79a67429a4956262a957cceb9a19c647183aa60cdf0f2328"

      def install
        bin.install "klyro_v1.10.0_linux_arm64" => "klyro"
      end
    end

    on_intel do
      url "https://get.klyro.security/cli/v1.10.0/klyro_v1.10.0_linux_amd64"
      sha256 "5ebff36420f0307defe79590237cb33b8b8d48cf0953024fa207194419251c3f"

      def install
        bin.install "klyro_v1.10.0_linux_amd64" => "klyro"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/klyro version")
  end
end
