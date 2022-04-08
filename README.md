# latex2e-textlint-sample

[![Actions Status: Linter](https://github.com/t4t5u0/late2e-textlint-sample/workflows/Linter/badge.svg)](https://github.com/t4t5u0/late2e-textlint-sample/actions?query=workflow%3A"Linter")
[![Actions Status: PDF](https://github.com/t4t5u0/late2e-textlint-sample/workflows/PDF/badge.svg)](https://github.com/t4t5u0/late2e-textlint-sample/actions?query=workflow%3A"PDF")

LaTeX2eに対して、TextLintを行いたいです．

`writing_space` 内に，TeXファイルなどを配置してください．  
手元でPDFを作成する際は以下のよう，`writing_space`内でPDFを作成してください．

解説記事です．[[初心者向け] LaTeX文書をいい感じに運用する方法](https://zenn.dev/t4t5u0/articles/latexoperation)

```sh
cd writing_space
latexmk
```

## ローカルでの動作

### pdfを出力する

```sh
docker compose up pdf
```

### linterを適用する

```sh
docker compose up linter
```

## GitHub上での動作

### pdfを出力する．

Tagが付与された場合，mainブランチにPushまたは，mainブランチにMergeされた場合，TeXのビルドが行われます．  
特に，`v`から始まるTagが付与された場合は，Releaseにタグ名が付与されたPDFを自動でアップロードします．

### linterを適用する

TeXファイルを変更した後にPull Requestを作成すると，[reviewdog](https://github.com/reviewdog/reviewdog)により，Reviewが行われます．  
これは，ローカルでTextlintを適用したときと同じ動作をします．
