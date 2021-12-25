# late2e-textlint-sample
LaTeX2eに対して、TextLintを行いたいです．

`writing_space` 内に，TeXファイルなどを配置してください．  
手元でPDFを作成する際は
```sh
cd writing_space
latexmk
```
のように，`writing_space`に移動してから作業をしてください．

pdfを出力する．
```
docker compose up pdf
```


linterを適用する．
```
docker compose up linter
```