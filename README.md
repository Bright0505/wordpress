### NGINX VERSION 1.19.10
### PHP VERSION 7.4
### MySQL VERSION 8
### COMPOSER VERSION 1.10.22
### WORDORESS VERSION 6.0.2

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
./html