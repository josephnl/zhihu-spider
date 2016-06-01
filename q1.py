#/usr/bin/env python3
# -*- coding: utf-8 -*-
# filename q1.py


import pymysql
import ConfigParser

# 使用 ConfigParser模块从config.ini中读取数据库信息
cf = ConfigParser.ConfigParser()
cf.read("/Users/Apple/github/zhihu-spider/config.ini")

host = cf.get("db", "host")
port = int(cf.get("db", "port"))
user = cf.get("db", "user")
passwd = cf.get("db", "passwd")
db_name = cf.get("db", "db")
charset = cf.get("db", "charset")
use_unicode = cf.get("db", "use_unicode")


# 使用pymysql模块链接数据库

db = pymysql.connect(host=host, port=port, user=user, password=passwd,
                     database=db_name, charset=charset, use_unicode=use_unicode)
cursor = db.cursor()

for i in range(1, 10):
    cursor.execute('select * from QUESTION where id = %d' % i)
    values = cursor.fetchall()
    print(values)
