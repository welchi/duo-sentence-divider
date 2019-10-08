# duo-sentence-divider
DUO3.0(復習編)の英文を分割する

## Requirement
Mac前提

Juliusをダウンロードしてインストールしておく(adintool用)
https://github.com/julius-speech/julius/releases
```
tar xvzf julius-4.5
cd julius-4.5
./configure
make
sudo make install
```

Soxをインストール
```
brew install sox
```

## Usage
```
# m4aファイルをwavに変換する
./convert_m4a_to_wav.sh <入力元ディレクトリ> <出力先ディレクトリ>
# wavを発話区間で分割する 
./english-divider <入力元ディレクトリ(↑でwavに変換したディレクトリ)> <出力先ディレクトリ>
```
