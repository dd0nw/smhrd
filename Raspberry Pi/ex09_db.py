import pymysql as ps
import spidevRead as sr

conn = ps.connect(host='localhost', user='root', passwd='1234', db='test')
curs = conn.cursor()
read = sr.analog_read(0)
sql = f'insert into sensordb(sensing) values({read})'
curs.execute(sql)
conn.commit()