#import pymysql as ps
import databas as db

#conn = ps.connect(host='localhost', user='root', passwd='1234', db='test')
#curs = conn.cursor()
sql = 'select * from sensordb'
#curs.execute(sql)
#result = curs.fetchall()
result = db.db_select(sql)


for s, t in result:
    print('sensing : {} / ts : {}'.format(s,t))