## 概要
本ディレクトリは、『OAuth徹底入門』（以下、教本という）という書籍の第3章から始まるサンプルアプリの実装を、**あえて** LambdaとGithub Pagesでやってのけようという試みの作業場として使う。
教本ではexpressをつかってサンプルアプリを実装しているが、これがわかりにくいのなんの。
ということで、認可サーバーはLambda×API Gateway、保護対象リソースもLambda×API Gateway、クライアントはGithub Pagesで作ろうと思う。

.gitignoreは[gitignore.io](https://www.toptal.com/developers/gitignore/)で作った。

authorization-serverとprotected-resourceは[共通モジュールiac-base](https://github.com/takawin/iac-base/tree/main/modules/minimum-lambda)からコピペ