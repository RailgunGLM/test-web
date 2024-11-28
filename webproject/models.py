import pymysql

def get_setting():
    conn = pymysql.connect(
        host = 'railgunglm-database.c5kqkuqg49fj.us-east-1.rds.amazonaws.com',
        port = 3306,
        user = 'admin',
        password = 'railgunglm-database',
        db = 'stats',
        )
    cur = conn.cursor()
    cur.execute("SELECT * FROM setting")
    details = cur.fetchall()
    return details