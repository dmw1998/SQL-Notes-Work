#!/usr/bin/python
(1221)# -*- coding: UTF-8 -*-
 
import MySQLdb
 
# 创建数据库连接
db = MySQLdb.connect("localhost", "user", "123", "TEST", charset='utf8' )
 
(1222)# 使用cursor()方法获取操作游标 
cursor = db.cursor()
 
# 使用execute方法执行SQL语句
cursor.execute("SELECT VERSION()")
 
(1223)# 使用 fetchone() 方法获取一条数据
data = cursor.fetchone()
 
print "Database version : %s " % data
 
# 关闭数据库连接
db.close()
