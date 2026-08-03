### NGINX VERSION 1.31.3
### PHP VERSION 8.5
### MySQL VERSION 8.0.30
### WORDPRESS VERSION 7.0.2

> 本站為 **headless CMS**：只提供後台與 REST／GraphQL API，前台路由已關閉。
> WordPress 掛在網站根目錄（過去的 `/cms` 前綴已移除，舊路徑會 301 轉址）。
>
> - 後台：`/wp-admin/`（**限內網**，見 `nginx/default.conf` 的 `geo` 設定）
> - REST：`/wp-json/`
> - GraphQL：`/graphql`

# 安裝 mysql and WORDORESS
實行前請確認是否安裝 docker-compose  
並將 .env.example 更名為 .env  
各項參數請參照以下 env 設定

## env 設定
```
DB_DATABASE= #新增 database
DB_PASSWORD= #設定密碼 root/user
DB_USERNAME= #新增帳號
```

## 如需匯入 sql 請放置於資料夾內:
mysql-dump  
裡面放需要匯入的 .sql 檔

## 執行
docker-compose up -d

## WORDORESS 位置
./www
