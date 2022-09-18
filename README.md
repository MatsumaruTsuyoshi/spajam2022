# spajam2022

٩( ᐛ )و

## Getting Started

### 開発手順

1. fvmを設定する。すでにconfigファイルは用意しているので、fvmのインストール（未インストールの場合）とIDEの設定を行う。
2. 新しい機能を追加する際は、mainブランチを最新の状態にし、そこから新しい名前でブランチを切る。今回は特にブランチを分けていないのでmainで開発を進めていく。
3. デバッグの際は fvm flutter run コマンドで実施。IDEのfvm設定が済んでいればデバッグボタンでもOK
4. プルリクを出す。基本はmainに向けて。

### ディレクトリ構成

前提：

- このプロジェクトでは、テストを作らない（予定な）ので依存関係などは特に気にしない
  (例：view modelにfirestoreライブラリをimportして直接データベースとのやりとりをしてOK)
- 変更と管理がしやすいと思われる、mvvmパターンで作ることにする
    - model : モデル名.dart （or entity; 今回はmodelをentityと兼ねてもよいことにする） 
    - view : ui (components & pages)
    - view model : 〇〇_view_model.dart or 〇〇_controller.dart
- 複数クラスから参照する予定のproviderは'main.dart'と同階層に置いておくことにする
- エラーハンドリングは各関数内に実装する（面倒なようであれば変更する）
- レイヤベースで管理する（https://codewithandrea.com/articles/flutter-project-structure/）
- ディレクトリ構成全体で変更がある場合は、この変更のためのブランチを作る。このファイルも修正する。

lib下のディレクトリ構成：

- lib
    - model/ : model名.dart
    - ui/
        - components/ : ページ間で共有する部品
        - pages/ : 各ページとそのview model(controller)
    - providers/ : 全体で参照するプロバイダとview model
    - main.dart :
    - firebase_options.dart

### その他

- フォルダ名とデータベースのパラメータ名は基本snake case / クラス名や変数名などはcamel caseで命名することにする。
