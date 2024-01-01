# FuelNetworkRepo
モジュラー型ブロックチェーンFuel Networkに関するサンプルリポジトリです。

### Sway

スマートコントラクト開発用言語

### テンプレプロジェクト生成コマンド

```bash
forc new petition-contract
```

### Fuel Walletのセットアップ

初期化

```bash
forc wallet new
```

アカウントの生成

```bash
forc wallet account new
```

Wallet address: fuel1cc9ckz2tax2mmglez6wwefz82nm0g2duhnulc29y80w9c20yud9s5duvrp

作成したウォレット一覧取得

```bash
forc wallet accounts
```

スマートコントラクトのビルド

```bash
forc build
```

テストネットへのデプロイ

```bash
forc deploy --testnet
```

うまくいくと以下のようになる

```bash
Contract petition-contract Deployed!

Network: https://beta-4.fuel.network
Contract ID: 0xa61c20d8b2ad2299e413f8ad4165a830794e188321693c8186db7f10f379780c
Deployed in block 0x80ffcda5ceb3ba1b23ec62ac40313629df7e2c3246d4d6f69be7226271678476
```

ABIファイルをコピーする

```bash
npx fuels typegen -i ../petition-contract/out/debug/*-abi.json -o ./src/contracts
```



### 参考文献
1. [Learn to Build on Modular Blockchains with Fuel Network](https://metaschool.so/fuel)
2. [FuelNetwork公式サイト](https://www.fuel.network/)
3. [CLIインストール](https://docs.fuel.network/docs/fuelup/installation/)
4. [GtiHub main.sw](https://github.com/0xmetaschool/petition-contract/blob/main/src/main.sw)
5. [Fuel Wallet 公式サイト](https://wallet.fuel.network/docs/install/)
6. [ファウセット用のURL](https://faucet-beta-4.fuel.network/?address=fuel1cc9ckz2tax2mmglez6wwefz82nm0g2duhnulc29y80w9c20yud9s5duvrp)
7. [フロントエンド用のボイラーテンプレート](https://github.com/0xmetaschool/fuel-petition-frontend-boilerplate)