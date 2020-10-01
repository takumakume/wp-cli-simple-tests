# wp-cli-simple-tests [![Build Status](https://travis-ci.com/takumakume/wp-cli-simple-tests.svg?branch=master)](https://travis-ci.com/takumakume/wp-cli-simple-tests)

[wp-cli/wp-cli](https://github.com/wp-cli/wp-cli) の動作テストを行うリポジトリ。
wp-cliのテストフレームワークである [wp-cli-tests](https://github.com/wp-cli/wp-cli-tests) を利用してテストを実装している。

## テスト内容の変更方法

### WordPressのバージョンを追加

`.travis.yml` にテストしたいバージョンのWordPressのジョブを追加する。

### PHPのバージョンを変えたい

`.travis.yml` のPHPバージョンを変更する。

もしくは、以下のようにjobで指定する。

```yml
  - stage: test
    env: WP_VERSION=4.4.23
    php: 7.2
```

### テストケースを変更したい

`features/testing.feature` を修正する。
