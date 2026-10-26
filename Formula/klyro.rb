class Klyro < Formula
  desc "Klyro command-line interface"
  homepage "https://klyro.security"
  version "1.6.0"

  on_macos do
    on_arm do
      url "https://get.klyro.security/cli/v1.6.0/klyro_v1.6.0_darwin_arm64"
      sha256 "d18cf58c9cb2599ee7b0ef54334612339c9f8eb606b5752ea3b923090919d74b"

      def install
        bin.install "klyro_v1.6.0_darwin_arm64" => "klyro"
      end
    end

    on_intel do
      url "https://get.klyro.security/cli/v1.6.0/klyro_v1.6.0_darwin_amd64"
      sha256 "d546de4d4181e9d3da01ccb6bd2ed9a845730c29f1d8aa760bf2f6566dd5049e"

      def install
        bin.install "klyro_v1.6.0_darwin_amd64" => "klyro"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://get.klyro.security/cli/v1.6.0/klyro_v1.6.0_linux_arm64"
      sha256 "f2651a5b1da33bdac4bdf9927a9dbc97fbd05e474d4818e8d2ec33b7e93b8fbc"

      def install
        bin.install "klyro_v1.6.0_linux_arm64" => "klyro"
      end
    end

    on_intel do
      url "https://get.klyro.security/cli/v1.6.0/klyro_v1.6.0_linux_amd64"
      sha256 "c71e31b4918c23416a6cde6d2be880f38467cdbba9b82ec61c67eb52d81c5225"

      def install
        bin.install "klyro_v1.6.0_linux_amd64" => "klyro"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/klyro version")
  end
end
