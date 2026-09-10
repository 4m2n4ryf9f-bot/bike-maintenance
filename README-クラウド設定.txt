GARAGE WORKS v2.3 クラウド自動同期

■ できること
・給油、メンテ、ODO、写真などを保存するとSupabaseへ自動同期
・同じメールアドレス／パスワードで別iPhoneからログインして復元
・従来のJSON手動バックアップも利用可能

■ 初回だけ必要な設定
1. Supabaseでプロジェクトを作成
2. SupabaseのSQL Editorで「supabase-setup.sql」を実行
3. Project Settings > API から Project URL と Publishable/Anon key を確認
4. GARAGE WORKSの「クラウド自動同期」に入力して「設定を保存」
5. 「新規登録」でメールアドレスとパスワードを登録
6. 「ログイン」

※ パスワードはSupabaseへ送信されます。アプリ内には保存しません。
※ Anon/Publishable keyは公開クライアントで使用する前提のキーです。service_role keyは絶対に入力しないでください。
